/*
 * basebar.c
 *
 *  Created on: 27.10.2014
 */
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Cpu/Std/Ifx_Types.h>
#include <Tft/conio_tft.h>
#include <Tft/touch.h>

/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void bar_select_menu (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void bar_select_stdout0 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void bar_select_stdout1 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void bar_select_graph0 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void bar_select_off (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 bar_input (sint32 ind, TDISPLAYENTRY * pdisplayentry);

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
// *INDENT-OFF*
const TDISPLAYENTRY stdlist[6] = {
  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 6, (TERMINAL_MAXY-1), &bar_select_menu, 0, &bar_input, " iMENU "},
  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 8, 16, (TERMINAL_MAXY-1), &bar_select_stdout0, 0, &bar_input, " STDOUT0 "},
  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 18, 26, (TERMINAL_MAXY-1), &bar_select_stdout1, 0, &bar_input, " STDOUT1 "},
  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 28, 35, (TERMINAL_MAXY-1), &bar_select_graph0, 0, &bar_input, " GRAPH0 "},
  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 37, 40, (TERMINAL_MAXY-1), &bar_select_off, 0, &bar_input, "OFF"},
  {0, 0, 0, 0, 0, 0, 0, 0, " "}
};
// *INDENT-ON*
/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void bar_select_menu (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYBAR, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAYBAR, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAYBAR, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAYMENU; //Menu
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void bar_select_stdout0 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYBAR, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAYBAR, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAYBAR, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAYSTDOUT0;  //stdout0
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void bar_select_stdout1 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYBAR, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAYBAR, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAYBAR, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAYSTDOUT1;  //stdout1
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void bar_select_graph0 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYBAR, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAYBAR, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAYBAR, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAYGRAPHICS0;    //graph0
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void bar_select_off (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAYBAR, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAYBAR, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAYBAR, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.dialogmode = SWITCHOFFON;    //open confirmation window for switchoff
        // we switch to display menu if we are in graphics
        if (conio_driver.displaymode == DISPLAYGRAPHICS0)
            conio_driver.displaymode = DISPLAYMENU; //Menu
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

sint32 bar_input (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    __debug ();
    return (0);
}
