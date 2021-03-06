/**
 * \file 
 * \brief Beeper Driver
 *
 * The Beeper Driver install the needed PWM for beeper and switch on and off.
 */
#ifndef _BEEPER_H
#define _BEEPR_H
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Cpu/Std/Ifx_Types.h>

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/


sint32 beeper_init (void);
sint32 beeper_on (void);
sint32 beeper_off (void);

#endif /* _beeper_H */
