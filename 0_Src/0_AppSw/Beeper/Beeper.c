/**
 * \file 
 * \brief Beeper Driver
 *
 * The Beeper Driver install the needed PWM for beeper and switch on and off.
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Cpu/Std/Ifx_Types.h>
#include <Gtm/Tom/Timer/IfxGtm_Tom_Timer.h>
#include "Configuration.h"
#include "Beeper.h"


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

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/**
 * \brief  Beeper Init
 *         initialize our Acoustic Transducer
 * \param  none
 * \return 0
 */
sint32 beeper_init (void)
{
	/* initialize the beeper (2048Hz) */
	IfxGtm_Tom_Timer_Config driverConfig;
	IfxGtm_Tom_Timer driverData;

	IfxGtm_Tom_Timer_initConfig(&driverConfig, &MODULE_GTM);
	driverConfig.tom = BEEPER.tom;
	driverConfig.timerChannel = BEEPER.channel;
	driverConfig.triggerOut = &BEEPER;
	driverConfig.base.frequency = 2048;
	driverConfig.base.minResolution = 0;
	driverConfig.base.trigger.enabled = TRUE;
	driverConfig.base.trigger.outputEnabled = TRUE;
	driverConfig.base.trigger.outputMode = IfxPort_OutputMode_pushPull;
	driverConfig.base.trigger.outputDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
	driverConfig.base.trigger.triggerPoint =  10000;
	driverConfig.base.trigger.risingEdgeAtPeriod = TRUE;
	IfxGtm_Tom_Timer_init (&driverData, &driverConfig);

	/* switch off the beeper */
	IfxPort_setPinModeInput(BEEPER.pin.port, BEEPER.pin.pinIndex, IfxPort_Mode_inputPullDown);
	/* start the 2048Hz for Beeper */
	IfxGtm_Tom_Timer_run(&driverData);
	/* we don't save the driverData because no longer used (needed) */

	return (0);
}

/*!
 * \brief   switch the beeper on
 *
 * ...
 */

sint32 beeper_on (void)
{
	IfxPort_setPinModeOutput(BEEPER.pin.port, BEEPER.pin.pinIndex, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_alt1);
    return (0);
}

/*!
 * \brief   switch the beeper off
 *
 * ...
 */

sint32 beeper_off (void)
{
	IfxPort_setPinModeInput(BEEPER.pin.port, BEEPER.pin.pinIndex, IfxPort_Mode_inputPullDown);
    return (0);
}
