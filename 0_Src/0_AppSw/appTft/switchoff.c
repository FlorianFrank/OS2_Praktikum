/*
 * SWITCHOFF.c
 *
 *  Created on: 27.10.2014
 *      Author: dienst
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <Cpu/Std/Ifx_Types.h>
#include <Cpu/Std/IfxCpu_Intrinsics.h>
#include <Tft/conio_tft.h>
#include <Tft/touch.h>
#include <string.h>
#include <stdio.h>
#include <Power/TLF35584.h>
/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define SWITCHOFF_BUTTONS   2

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void switchoff_display (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 switchoff_input (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void switchoff_select_ok (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void switchoff_select_cancel (sint32 ind, TDISPLAYENTRY * pdisplayentry);

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
// *INDENT-OFF*
const uint8 switchoff_outline[6][30] = {
{0xDA,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xBF},
{0xB3,0x00,0x00,0x00,0x00, 'S', 'W', 'I', 'T', 'C', 'H', 'O', 'F', 'F', ' ', 'T', 'H', 'E', ' ', 'B', 'O', 'A', 'R', 'D', '?',0x00,0x00,0x00,0x00,0xB3},
{0xB3,0x00,0x00,0xDA,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xBF,0x00,0x00,0x00,0x00,0xDA,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xBF,0x00,0x00,0xB3},
{0xB3,0x00,0x00,0xB3,0x00,0x00,0x00, 'O', 'K',0x00,0x00,0x00,0xB3,0x00,0x00,0x00,0x00,0xB3,0x00, 'C', 'A', 'N', 'C', 'E', 'L',0x00,0xB3,0x00,0x00,0xB3},
{0xB3,0x00,0x00,0xC0,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xD9,0x00,0x00,0x00,0x00,0xC0,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xD9,0x00,0x00,0xB3},
{0xC0,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xD9}
};

const TDISPLAYENTRY switchofflist[SWITCHOFF_BUTTONS] = {
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 9, 16, 9, &switchoff_select_ok, &switchoff_display, &switchoff_input,"", 0x0},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 23, 30, 9, &switchoff_select_cancel, &switchoff_display, &switchoff_input,"", 0x0}
};
// *INDENT-ON*
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void switchoff_display (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    sint32 j;
    for (j = switchofflist[ind].xmin; j <= switchofflist[ind].xmax; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, j, switchofflist[ind].y);
        conio_ascii_textchangecolor (conio_driver.displaymode, switchofflist[ind].color_display);
    }
}

sint32 switchoff_input (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    __debug ();
    return (0);
}

void switchoff_select_ok (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    uint32 j;
    for (j = switchofflist[ind].xmin; j <= switchofflist[ind].xmax; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, j, switchofflist[ind].y);
        conio_ascii_textchangecolor (conio_driver.displaymode, switchofflist[ind].color_select);
    }
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        conio_driver.dialogmode = DIALOGOFF;
     	// we need to switch off the device by command to TLE35584 (standbymode)
        IfxTLF35584_goto_standby_state();
        // we set the driver to Alarmset, because if there is an alarm the device is not shutdown
        conio_driver.dialogmode = SHOWALARMON;
        display_ascii_clrscr(conio_driver.displaymode);
    }
}

void switchoff_select_cancel (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    uint32 j;
    for (j = switchofflist[ind].xmin; j <= switchofflist[ind].xmax; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, j, switchofflist[ind].y);
        conio_ascii_textchangecolor (conio_driver.displaymode, switchofflist[ind].color_select);
    }
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        conio_driver.dialogmode = DIALOGOFF;
        conio_ascii_clrscr(conio_driver.displaymode);
        if (conio_driver.displaymode == DISPLAYSTDOUT0)
        	conio_ascii_printfxy (DISPLAYSTDOUT0, 1, 0, (uint8 *)VERSION_TEXT);

    }
}

void switchoff (sint16 x, sint16 y)
{
    sint32 i, j;
    conio_ascii_textcolor (DISPLAYMENU, BLACK);
    conio_ascii_textbackground (DISPLAYMENU, CYAN);
    for (j = 0; j < 6; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, 5, 6+j);
        for (i = 0; i < 30; i += 1)
        {
            conio_ascii_putch (conio_driver.displaymode, switchoff_outline[j][i]);
        }
    }
    conio_ascii_gotoxy (conio_driver.displaymode, 5, 0);
    /* for all buttons */
    for (i = 0; i < SWITCHOFF_BUTTONS; i += 1)
    {
        if ((x >= switchofflist[i].xmin) && (x <= switchofflist[i].xmax) && (y == switchofflist[i].y))
        {
        	switchofflist[i].select (i, (struct DISPLAYENTRY *) &switchofflist[i]);
        }
        else
        {
        	switchofflist[i].display (i, (struct DISPLAYENTRY *) &switchofflist[i]);
        }
    }
}
