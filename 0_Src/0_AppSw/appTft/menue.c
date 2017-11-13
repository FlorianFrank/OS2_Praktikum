/*
 * menue.c
 *
 *  Created on: 27.10.2014
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Cpu/Std/Ifx_Types.h>
#include <stdio.h>
#include <string.h>
#include <Tft/conio_tft.h>
#include <Tft/touch.h>
#include "main_appl.h"
#include <Rtc/RTC.h>
#include <DemoApp/background_light.h>
#include <DemoApp/Measurement.h>

/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void menu_display (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 menu_input (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_time (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_time (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_menu1 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_menu2 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_menu3 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 menu_input_menu3 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_menu3 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_alarm (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 menu_input_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_background_lightplus (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_background_lightminus (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_die_temp (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_die_temp (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_core_volt (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_core_volt (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_Vddp3 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_Vddp3 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_Vext (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_Vext (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_slideshow (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_slideshow (sint32 ind, TDISPLAYENTRY * pdisplayentry);

extern void start_slideshow(void);

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
// *INDENT-OFF*
const TDISPLAYENTRY menulist[19] = {
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 7, 31, 0, &menu_select_time, &menu_display_time, &menu_input,"Date: 24/10/14 Time: 16:00"},
{0, 0, 0, 0, 0, 0, 0, 0, " "},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 12, 2, &menu_select_menu1, &menu_display, &menu_input,"TFT Main Menu"},        //TFT Main Menue
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 5, 3, &menu_display_menu2, &menu_display_menu2, &menu_input,"Menu_2"},    //Time
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 5, 4, &menu_display_menu2, &menu_display_menu2, &menu_input,"Menu_2"},    //Time

//{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 5, 4, &menu_select_menu3, &menu_display_menu3, &menu_input,"Menu_3"},     //Delta

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 8, 5, &menu_select_alarm, &menu_display, &menu_input,"Set Alarm"},        //Alarmtime

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 16,7, &menu_select_background_light, &menu_display_background_light, &menu_input_background_light, "Background Light: "},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 15,8, &menu_select_background_lightplus, &menu_display, &menu_input, "----> Increase: +"},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 15,9, &menu_select_background_lightminus, &menu_display, &menu_input, "----> Decrease: -"},

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 15,11, &menu_select_die_temp, &menu_display_die_temp, &menu_input, "DIE-Temperature: "},

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 13,13, &menu_select_core_volt, &menu_display_core_volt, &menu_input, "Core Voltage : "},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 13,14, &menu_select_Vddp3, &menu_display_Vddp3, &menu_input, "VDDP3 Voltage: "},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 13,15, &menu_select_Vext, &menu_display_Vext, &menu_input, "VEXT Voltage : "},

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 13,17, &menu_select_slideshow, &menu_display_slideshow, &menu_input, "Start Slideshow"},

{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "}  //LAST ENTRY
};
// *INDENT-ON*
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
extern TCONTROLMENU controlmenu;

extern TIME Time2Set;

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void menu_display (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_display);
    conio_ascii_gotoxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAYMENU, &pdisplayentry->text[0]);
}

void menu_select (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAYMENU, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

sint32 menu_input (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    __debug ();
    return (0);
}

void menu_display_time (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
  TIME ActTime;
  rtc_gettime (&ActTime);
  conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_display);
  conio_ascii_printfxy(DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Date: %02x/%02x/%02x Time: %02x:%02x", ActTime.date, ActTime.month, ActTime.year, ActTime.hours, ActTime.minutes);
}

void menu_select_time (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    TIME ActTime;
    rtc_gettime (&ActTime);

    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_select);
    conio_ascii_printfxy(DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Date: %02x/%02x/%02x Time: %02x:%02x", ActTime.date, ActTime.month, ActTime.year, ActTime.hours, ActTime.minutes);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
      conio_driver.dialogmode = SETTIMEON;    //open set time window
      rtc_gettime (&Time2Set);
      touch_driver.touchmode &= ~MASK_TOUCH_UP; //clear
      rtc_calibration();
    }
}

void menu_select_menu1 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAYMENU, (uint8 *) "Reset Time");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        controlmenu.cpuseconds = 0.0f;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_menu2 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Time %f", controlmenu.cpuseconds);
}

void menu_display_menu3 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Delta %f", controlmenu.cpusecondsdelta);
}

sint32 menu_input_menu3 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    float32 temp;
    sint32 result;
    result = sscanf ((char *) &conio_driver.scanftext[0], "%f", &temp);
    if (result != 1)
        return (-1);
    controlmenu.cpusecondsdelta = temp;
    return (0);
}

void menu_select_menu3 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_select);
    conio_ascii_printfxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Delta %f", controlmenu.cpusecondsdelta);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        strcpy ((char *) &conio_driver.scanfdescr[0], "Delta ");
        sprintf ((char *) &conio_driver.scanftext[0], "%f", controlmenu.cpusecondsdelta);
        //                     control.cpuseconds=0.0f;
        conio_driver.scanfx = 0;    //actual cursor
        conio_driver.dialogmode = KEYBOARDON; //Keyboard input mode
        conio_driver.input = pdisplayentry->input;
        conio_driver.inputid = ind;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_select_alarm (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAYMENU, pdisplayentry->text);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
      conio_driver.dialogmode = SETALARMTIME;    //open set time window
      rtc_gettime (&Time2Set);
      touch_driver.touchmode &= ~MASK_TOUCH_UP; //clear
    }
}

void menu_display_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Background Light: %u", (unsigned int) backgroundlightsize);
}

sint32 menu_input_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    uint32 temp;
    sint32 result;
    result = sscanf ((char *) &conio_driver.scanftext[0], "%u", (unsigned int *) &temp);
    if (result != 1)
        return (-1);
    if (temp < backgroundlightmin)
        temp = backgroundlightmin;
    if (temp > backgroundlightmax)
        temp = backgroundlightmax;

    backgroundlightsize = temp;

    return (0);
}

void menu_select_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_select);    //MENUE
    conio_ascii_printfxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Change Light: %u", (unsigned int) backgroundlightsize);   //MENUE
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        strcpy ((char *) &conio_driver.scanfdescr[0], "Light: ");    //PREP of Keyboard Mode
        sprintf ((char *) &conio_driver.scanftext[0], "%u", (unsigned int) backgroundlightsize); //right upper value
        conio_driver.scanfx = 0;    //actual cursor
        conio_driver.dialogmode = KEYBOARDON; //Keyboard input mode
        conio_driver.input = pdisplayentry->input;
        conio_driver.inputid = ind;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_select_background_lightplus (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAYMENU, (uint8 *) "----> Increase +");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        if (backgroundlightsize < backgroundlightmax)
            backgroundlightsize += backgroundlightdelta;
    }
}

void menu_select_background_lightminus (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAYMENU, (uint8 *) "----> Decrease -");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        if (backgroundlightsize > backgroundlightmin)
            backgroundlightsize -= backgroundlightdelta;
    }
}


void menu_display_die_temp (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"DIE Temperature: %.1f %cC", (float) die_temp, 0xF8);
}

void menu_select_die_temp (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_select);
    conio_ascii_printfxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"DIE Temp min: %.1f %cC  max: %.1f %cC", die_lowest, 0xF8, die_highest, 0xF8);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_core_volt (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"CORE Voltage : %.2f V", (float) core_voltage);
}

void menu_select_core_volt (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_select);
    conio_ascii_printfxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"CORE Voltage min : %.2f V  max : %.2f V", core_volt_min, core_volt_max);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_Vddp3 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"VDDP3 Voltage: %.2f V", (float) Vddp3);
}

void menu_select_Vddp3 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_select);
    conio_ascii_printfxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"VDDP3 Voltage min: %.2f V  max: %.2f V", Vddp3_min, Vddp3_max);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_Vext (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"VEXT Voltage : %.2f V", (float) Vext);
}

void menu_select_Vext (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_select);
    conio_ascii_printfxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"VEXT Voltage min : %.2f V  max : %.2f V", Vext_min, Vext_max);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_slideshow (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
	if (IfxPort_getPinState(&MODULE_P15, 8) == TRUE)
	{
		// no sdcard inside, we graying the point
		conio_ascii_textattr (DISPLAYMENU, LIGHTGRAY);
		conio_ascii_textbackground (DISPLAYMENU, MENU_BACKGRND);
	}
	else
		conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_display);
    conio_ascii_gotoxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAYMENU, pdisplayentry->text);
}

void menu_select_slideshow (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
	if (IfxPort_getPinState(&MODULE_P15, 8) == TRUE)
	{
		// no sdcard inside, we graying the point
		conio_ascii_textattr (DISPLAYMENU, LIGHTGRAY);
		conio_ascii_textbackground (DISPLAYMENU, MENU_BACKGRND);
	    conio_ascii_gotoxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y);
	    conio_ascii_cputs (DISPLAYMENU, pdisplayentry->text);
	    return;
	}

	conio_ascii_textattr (DISPLAYMENU, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAYMENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAYMENU, pdisplayentry->text);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
    	touch_driver.touchmode &= ~MASK_TOUCH_UP; //clear
        conio_driver.dialogmode = SLIDESHOW; //Start slideshow, switch off CONIO
        start_slideshow();
    }
}

void showmenu (sint16 x, sint16 y, TDISPLAYENTRY * pmenulist)
{
    sint32 i;
    conio_ascii_textbackground (DISPLAYMENU, MENU_BACKGRND);
    conio_ascii_clrscr (DISPLAYMENU);
    conio_ascii_textcolor (DISPLAYMENU, BLACK);
    conio_ascii_textbackground (DISPLAYMENU, CYAN);
    for (i = 0; pmenulist[i].select != 0; i += 1)
    {
        if ((x >= pmenulist[i].xmin) && (x <= pmenulist[i].xmax) && (y == pmenulist[i].y))
        {
            if (conio_driver.dialogmode == DIALOGOFF)
            {
                if (pmenulist[i].display == 0)
                    menu_select (i, (struct DISPLAYENTRY *) &pmenulist[i]);
                else
                {
                    pmenulist[i].select (i, (struct DISPLAYENTRY *) &pmenulist[i]);
                }
            }
        }
        else
        {
            if (pmenulist[i].display == 0)
                menu_display (i, (struct DISPLAYENTRY *) &pmenulist[i]);
            else
            {
                pmenulist[i].display (i, (struct DISPLAYENTRY *) &pmenulist[i]);
            }
        }
    }
}
