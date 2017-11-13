/*
 * SHOWALARM.c
 *
 *  Created on: 27.10.2014
 *      Author: dienst
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <Cpu/Std/Ifx_Types.h>
#include <Tft/conio_tft.h>
#include <Tft/touch.h>
#include "Configuration.h"
#include <Rtc/RTC.h>
#include <Beeper/Beeper.h>

/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define SHOWALARM_BUTTONS   2

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void showalarm_display (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 showalarm_input (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void showalarm_select_reset (sint32 ind, TDISPLAYENTRY * pdisplayentry);      //special call back for reset the alarm
void showalarm_select_ignore (sint32 ind, TDISPLAYENTRY * pdisplayentry);  //special call back for ignore the alarm

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
// *INDENT-OFF*
const uint8 showalarm_outline[9][30] = {
{0xDA,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xBF},
{0xB3,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xB3},
{0xB3,0x00, 'R', ' ', 'T', ' ', 'C', ' ', ' ',  'A', ' ', 'L', ' ', 'A', ' ', 'R', ' ', 'M', ' ','A', ' ', 'C', ' ', 'T', ' ', 'I', ' ', 'V',0x00,0xB3},
{0xB3,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xB3},
{0xB3,0x00,0x00,0xDA,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xBF,0x00,0x00,0x00,0xDA,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xBF,0x00,0x00,0xB3},
{0xB3,0x00,0x00,0xB3,0x00,0x00, 'R', 'E', 'S', 'E', 'T',0x00,0x00,0xB3,0x00,0x00,0x00,0xB3,0x00, 'I', 'G', 'N', 'O', 'R', 'E',0x00,0xB3,0x00,0x00,0xB3},
{0xB3,0x00,0x00,0xC0,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xD9,0x00,0x00,0x00,0xC0,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xD9,0x00,0x00,0xB3},
{0xB3,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xB3},
{0xC0,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xD9}
};



const TDISPLAYENTRY showalarmlist[SHOWALARM_BUTTONS] = {
{(RED << 4) | BLACK, (BLACK << 4) | YELLOW, 9, 17, 10, &showalarm_select_reset, &showalarm_display, &showalarm_input,"", 0x0},
{(RED << 4) | BLACK, (BLACK << 4) | YELLOW, 23, 30, 10, &showalarm_select_ignore, &showalarm_display, &showalarm_input,"", 0x0}
};
// *INDENT-ON*
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
uint32 periodic_count = 0;

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/



void showalarm_display (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    sint32 j;
    for (j = showalarmlist[ind].xmin; j <= showalarmlist[ind].xmax; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, j, showalarmlist[ind].y);
        conio_ascii_textchangecolor (conio_driver.displaymode, showalarmlist[ind].color_display);
    }
}

sint32 showalarm_input (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    __debug ();
    return (0);
}

void showalarm_select_reset (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    uint32 j;
    for (j = showalarmlist[ind].xmin; j <= showalarmlist[ind].xmax; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, j, showalarmlist[ind].y);
        conio_ascii_textchangecolor (conio_driver.displaymode, showalarmlist[ind].color_select);
    }
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        conio_driver.dialogmode = DIALOGOFF;
        beeper_off();
        rtc_alarm_onoff(0, 0);
        rtc_reset_alarmflag (0);
        display_ascii_clrscr(conio_driver.displaymode);
        touch_event.status = TOUCH_UP; // reset touch status to the correct last status
    }
}

void showalarm_select_ignore (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    uint32 j;
    for (j = showalarmlist[ind].xmin; j <= showalarmlist[ind].xmax; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, j, showalarmlist[ind].y);
        conio_ascii_textchangecolor (conio_driver.displaymode, showalarmlist[ind].color_select);
    }
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        conio_driver.dialogmode = DIALOGOFF;
        beeper_off();
        conio_ascii_clrscr(conio_driver.displaymode);
        touch_event.status = TOUCH_UP; // reset touch status to the correct last status
    }
}

void showalarm (sint16 x, sint16 y)
{
    sint32 i, j;
    periodic_count++;
    touch_event.status = TOUCH_MOVE; // this is needed that our backlight will be switched on
    conio_ascii_textcolor (DISPLAYMENU, BLACK);
    if (periodic_count & 0x4)
    {
    	conio_ascii_textbackground (DISPLAYMENU, RED);
        beeper_on();
    }
    else
    {
    	conio_ascii_textbackground (DISPLAYMENU, LIGHTRED);
        beeper_off();
    }
    for (j = 0; j < 9; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, 5, 5+j);
        for (i = 0; i < 30; i += 1)
        {
            conio_ascii_putch (conio_driver.displaymode, showalarm_outline[j][i]);
        }
    }
    conio_ascii_gotoxy (conio_driver.displaymode, 5, 0);
    /* for all buttons */
    for (i = 0; i < SHOWALARM_BUTTONS; i += 1)
    {
        if ((x >= showalarmlist[i].xmin) && (x <= showalarmlist[i].xmax) && (y == showalarmlist[i].y))
        {
        	showalarmlist[i].select (i, (struct DISPLAYENTRY *) &showalarmlist[i]);
        }
        else
        {
        	showalarmlist[i].display (i, (struct DISPLAYENTRY *) &showalarmlist[i]);
        }
    }
}
