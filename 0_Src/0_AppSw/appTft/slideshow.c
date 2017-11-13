/*
 * menue.c
 *
 *  Created on: 27.10.2014
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Cpu/Std/Ifx_Types.h>
#include "configuration.h"
#include <Tft/conio_tft.h>
#include <Tft/touch.h>
#include <stdio.h>
#include <string.h>
#include <Fat_fs/ff.h>
/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
/* BITMAP_FILE_HEADER without uint16 bfType because compiler increased this to 32bit */
typedef struct BITMAP_FILE_HEADER {
  uint32 bfSize;
  uint16 bfReserved1;
  uint16 bfReserved2;
  uint32 bfOffBits;
} BITMAPFILEHEADER, *PBITMAPFILEHEADER;

typedef struct BITMAP_INFO_HEADER {
  uint32 biSize;
  uint32 biWidth;
  uint32 biHeight;
  uint16 biPlanes;
  uint16 biBitCount;
  uint32 biCompression;
  uint32 biSizeImage;
  uint32 biXPelsPerMeter;
  uint32 biYPelsPerMeter;
  uint32 biClrUsed;
  uint32 biClrImportant;
} BITMAPINFOHEADER, *PBITMAPINFOHEADER;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
FATFS Fatfs;		/* File system object */
FIL actFile;		/* File object */
FILINFO fno;        /* File status object */
DIR dir;			/* Directory object */
BITMAPFILEHEADER actFileHeader; /* bitmap file header */
BITMAPINFOHEADER actInfoHeader; /* bitmap info header */
uint32 uiActRow;
uint8 rawRowData[320*3];

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
/* this is our buffer for direct access */
#if defined(__DCC__)
    #if TFT_DISPLAY_VAR_LOCATION == 0
	#pragma section DATA ".data_cpu0" ".bss_cpu0" far-absolute RW
    #elif TFT_DISPLAY_VAR_LOCATION == 1
	#pragma section DATA ".data_cpu1" ".bss_cpu1" far-absolute RW
    #elif TFT_DISPLAY_VAR_LOCATION == 2
	#pragma section DATA ".data_cpu2" ".bss_cpu2" far-absolute RW
	#endif
#endif

extern uint16 Row_Buff[];

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
FRESULT scan_files (char* path)
{
    FRESULT res;
    FILINFO fno;
    DIR dir;
    int i;
    char *fn;
#if _USE_LFN
    static char lfn[_MAX_LFN * (0 ? 2 : 1) + 1];
    fno.lfname = lfn;
    fno.lfsize = sizeof(lfn);
#endif


    res = f_opendir(&dir, path);
    if (res == FR_OK) {
        i = strlen(path);
        for (;;) {
            res = f_readdir(&dir, &fno);
            if (res != FR_OK || fno.fname[0] == 0)
            {
            	conio_ascii_printf (DISPLAYSTDOUT1,(uint8 *)"Error: %d\n", res);
            	break;
            }
            if (fno.fname[0] == '.') continue;
#if _USE_LFN
            fn = *fno.lfname ? fno.lfname : fno.fname;
#else
            fn = fno.fname;
#endif
            if (fno.fattrib & AM_DIR) {
                sprintf(&path[i], "/%s", fn);
                res = scan_files(path);
                if (res != FR_OK)
                {
                	conio_ascii_printf (DISPLAYSTDOUT1,(uint8 *)"Error: %s %d\n", path, res);
                	break;
                }
                path[i] = 0;
            } else {
            	conio_ascii_printf (DISPLAYSTDOUT1,(uint8 *)"%s/%s\n", path, fn);
            }
        }
    }
    else
	    conio_ascii_printf (DISPLAYSTDOUT1,(uint8 *)"opendir fail: %s %d\n", path, res);

    return res;
}

void stop_slideshow (void)
{
   	conio_driver.dialogmode = DIALOGOFF;
	conio_driver.displaymode = DISPLAYSTDOUT1;
   	f_mount(0, 0);		/* UnMount */
}

void start_slideshow (void)
{
   	FRESULT res;				//Result

    /* we enable the background light Application Kit */
    IfxPort_setPinModeOutput(BACKGROUND_LIGHT.pin.port, BACKGROUND_LIGHT.pin.pinIndex, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinState(BACKGROUND_LIGHT.pin.port, BACKGROUND_LIGHT.pin.pinIndex, IfxPort_State_high);
    /* we disable our blinking led */
	IfxPort_setPinModeInput(LIFEHOLD_LED.port, LIFEHOLD_LED.pinIndex, IfxPort_Mode_inputPullUp); //Set Pin13_3 as Input with pull-up to switch off

	f_mount(0, &Fatfs);		/* Register volume work area (never fails) */
    res = f_opendir(&dir, "");
    if (res != FR_OK)
    {
		conio_ascii_printf (DISPLAYSTDOUT1,(uint8 *)"f_opendir error: %d\n", res);
		stop_slideshow();
		return;
    }
};

void slideshow_periodic (void)
{
   	FRESULT res;				//Result
    uint16 bfType, usCnt;
   	UINT  bytesRead;
	if (actFile.fs == 0)
	{
		// we don't have a file open, we open
		res = f_readdir(&dir, &fno);
		if (res != FR_OK)
		{
			conio_ascii_printf (DISPLAYSTDOUT1,(uint8 *)"f_readdir error: %d\n", res);
			stop_slideshow();
			return;
		}
		if (fno.fname[0] == 0)
		{
			// we don't have more files in this directory, reset the directory to restart
			f_readdir(&dir, 0);
			return;
		}
		// we ignore subdirectories
		if ((fno.fname[0] == '.') || (fno.fattrib & AM_DIR)) return;
		if (fno.lfname == 0) fno.lfname = fno.fname;
		res = f_open(&actFile, fno.lfname, FA_READ);
		if (res != FR_OK)
		{
			// file can't open, we ignore this file
			return;
		}
		/* now we check that the file is ok */
		/* get the file header */
		res = f_read(&actFile, (void *)&bfType, sizeof(uint16), &bytesRead);
		if ((res != FR_OK) || (bytesRead != sizeof(uint16)) || (bfType != 0x4D42))
		{
			// file can't read properly, we ignore this file
			f_close(&actFile);
			return;
		}
		/* get the file header */
		res = f_read(&actFile, (void *)&actFileHeader, sizeof(BITMAPFILEHEADER), &bytesRead);
		if ((res != FR_OK) || (bytesRead != sizeof(BITMAPFILEHEADER)))
		{
			// file can't read properly, we ignore this file
			f_close(&actFile);
			return;
		}
		/* get the bitmap info header */
		res = f_read(&actFile, (void *)&actInfoHeader, sizeof(BITMAPINFOHEADER), &bytesRead);
		if ((res != FR_OK) || (bytesRead != sizeof(BITMAPINFOHEADER)))
		{
			// file can't read properly, we ignore this file
			f_close(&actFile);
			return;
		}
		if ((actInfoHeader.biWidth != TFT_XSIZE))
		{
			// file can't read properly, we ignore this file
			f_close(&actFile);
			return;
		}
		if (actFileHeader.bfOffBits != sizeof(BITMAPFILEHEADER)+sizeof(BITMAPINFOHEADER)+2) f_lseek(&actFile, actFileHeader.bfOffBits);
		uiActRow = 0;
		// we go out here to don't overload this call
		return;
	}
	// if tft_status not 0 the the TFT is busy and we skip here
	if (tft_status != 0) return;
	// we set our row buffer to black
	if (uiActRow < TFT_YSIZE)
	{
		for (usCnt=0;usCnt<TFT_XSIZE; usCnt++) Row_Buff[usCnt] = BLACK;
		tft_display_setxy(0, uiActRow);
		if (uiActRow < actInfoHeader.biHeight)
		{
			// we get a new row from the actual file
			res = f_read(&actFile, (void *)&rawRowData, TFT_XSIZE*(actInfoHeader.biBitCount/8) , &bytesRead);
			if ((res != FR_OK) || (bytesRead != TFT_XSIZE*(actInfoHeader.biBitCount/8)))
			{
				conio_ascii_printf (DISPLAYSTDOUT1,(uint8 *)"f_read error: %d bytes read: %d\n", res, bytesRead);
				f_close(&actFile);
				stop_slideshow();
				return;
			}
			for (usCnt=0;usCnt<TFT_XSIZE; usCnt++)
			{
				if (actInfoHeader.biBitCount == 24)
				{
					uint8 r,g,b;
					// we get the pixeldata and put it to the row buff
					b = rawRowData[(actInfoHeader.biBitCount/8)*usCnt] >> 3;                 //b has only 5bit
					g = rawRowData[(actInfoHeader.biBitCount/8)*usCnt+1] >> 2;               //g has only 6bit
					r = rawRowData[(actInfoHeader.biBitCount/8)*usCnt+2] >> 3;               //r has only 5bit

					if (usCnt & 0x1) Row_Buff[usCnt-1] = (r << 11) | (g << 5) | b;
					else Row_Buff[usCnt+1] = (r << 11) | (g << 5) | b;
				}
				else
					Row_Buff[usCnt] = (rawRowData[(actInfoHeader.biBitCount/8)*usCnt+1]<<8) | rawRowData[(actInfoHeader.biBitCount/8)*usCnt];
			}
		}
		// send the line to tft
		tft_flush_row_buff((void *)0, TFT_XSIZE);
	}
	uiActRow++;
	if (uiActRow == 500) f_close(&actFile);
	touch_event.status = TOUCH_DOWN;

}
