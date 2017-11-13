/*
 * Measurement.c
 *      Periodically temperature and voltage measurement, Lifehold LED
 *  Created on: 02.03.2015
 *      Author: dienst
 */

#include <Cpu/Std/Ifx_Types.h>
#include <Dts/Dts/IfxDts_Dts.h>
#include <Gpt12/Std/IfxGpt12.h>
#include "Configuration.h"
#include <Port/Std/IfxPort.h>
#include "Measurement.h"

/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
#if ISR_PROVIDER_MEASUREMENT == 0
	#if defined(__GNUC__)
	#pragma section ".bss_cpu0" awc0
	#endif
	#if defined(__TASKING__)
	#pragma section farbss "bss_cpu0"
	#pragma section fardata "data_cpu0"
	#endif
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu0" ".bss_cpu0" far-absolute RW
	#endif
#elif ISR_PROVIDER_MEASUREMENT == 1
	#if defined(__GNUC__)
	#pragma section ".bss_cpu1" awc1
	#endif
	#if defined(__TASKING__)
	#pragma section farbss "bss_cpu1"
	#pragma section fardata "data_cpu1"
	#endif
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu1" ".bss_cpu1" far-absolute RW
	#endif
#elif ISR_PROVIDER_MEASUREMENT == 2
	#if defined(__GNUC__)
	#pragma section ".bss_cpu2" awc2
	#endif
	#if defined(__TASKING__)
	#pragma section farbss "bss_cpu2"
	#pragma section fardata "data_cpu2"
	#endif
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu2" ".bss_cpu2" far-absolute RW
	#endif
#else
#error "Set ISR_PROVIDER_MEASUREMENT to a valid value!"
#endif

uint8 toggle_counter;

float32 core_voltage;
float32 core_volt_min;
float32 core_volt_max;

float32 Vddp3;
float32 Vddp3_min;
float32 Vddp3_max;

float32 Vext;
float32 Vext_min;
float32 Vext_max;

float32 die_temp;
float32 die_highest;
float32 die_lowest;

#if defined(__GNUC__)
#pragma section
#endif
#if defined(__TASKING__)
#pragma section farbss restore
#pragma section fardata restore
#endif
#if defined(__DCC__)
#pragma section DATA RW
#endif

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
/**********************************************************************************/
void measurement_init(void)
{
	Ifx_GPT12 *  	gpt12;
	// set the start values
	toggle_counter = 0u;
	core_volt_min = 2.0f;
	core_volt_max = 0.0f;
	Vddp3_min = 4.0f;
	Vddp3_max = 0.0f;
	Vext_min = 6.0f;
	Vext_max = 0.0f;
	die_highest = -60.0f;
	die_lowest = 196.0f;
	// Get the default configuration
	IfxDts_Dts_Config dtsConfig;
	IfxDts_Dts_initModuleConfig(&dtsConfig);
	// Module initialization
	IfxDts_Dts_initModule(&dtsConfig);
	/* start a new measurement */
	IfxDts_Dts_startSensor();
	gpt12 = &MODULE_GPT120;
	// setup GPT to have an interrupt each REFRESH_MEASUREMENT ms
	IfxGpt12_enableModule(gpt12);
	IfxGpt12_T6_enableClearTimer(gpt12, FALSE);
	IfxGpt12_T6_setCounterInputMode(gpt12, IfxGpt12_CounterInputMode_counterDisabled);
	IfxGpt12_T6_setDirectionSource(gpt12, IfxGpt12_TimerDirectionSource_internal);
	IfxGpt12_T6_setEudInput(gpt12, IfxGpt12_EudInput_A);
	IfxGpt12_T6_setInput(gpt12, IfxGpt12_Input_A);
	IfxGpt12_T6_setMode(gpt12, IfxGpt12_Mode_timer);
	IfxGpt12_T6_setTimerDirection(gpt12, IfxGpt12_TimerDirection_down);
    IfxGpt12_T6_setTimerPrescaler(gpt12, IfxGpt12_TimerInputPrescaler_64);
    // enable Reload from CAPREL register (no function available to do this)
    gpt12->T6CON.B.T6SR = 1;
    // set the CAPREL (no function available to do this)
    gpt12->CAPREL.B.CAPREL = REFRESH_MEASUREMENT*(uint32)(IfxGpt12_T6_getFrequency(gpt12)/1000.0f);

	// setup the interrupt
	volatile Ifx_SRC_SRCR *src = IfxGpt12_T6_getSrc(gpt12);
    IfxSrc_init(src, ISR_PROVIDER_MEASUREMENT, ISR_PRIORITY_MEASUREMENT);
    IfxSrc_enable(src);

	IfxPort_setPinModeOutput(LIFEHOLD_LED.port, LIFEHOLD_LED.pinIndex, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    /* Start Timer */
	 IfxGpt12_T6_run(gpt12, IfxGpt12_TimerRun_start);
}

IFX_INTERRUPT(ISR_gtp12_t6, 0, ISR_PRIORITY_MEASUREMENT)
{
	if(toggle_counter == 1000u/REFRESH_MEASUREMENT)
	{
		IfxPort_togglePin(LIFEHOLD_LED.port, LIFEHOLD_LED.pinIndex); // Toggle LED

		toggle_counter = 0u;
	}
	toggle_counter++;

	/* we get the voltage result if there are new values */
	if (SCU_EVRADCSTAT.B.VAL == 1)
	{
		core_voltage = ((SCU_EVRADCSTAT.B.ADC13V-1) * 0.0057692f);
		if(core_voltage > core_volt_max)
			core_volt_max = core_voltage;
		if(core_voltage < core_volt_min)
			core_volt_min = core_voltage;

		Vddp3 = ((SCU_EVRADCSTAT.B.ADC33V-1) * 0.023077f);
		if(Vddp3 > Vddp3_max)
			Vddp3_max = Vddp3;
		if(Vddp3 < Vddp3_min)
			Vddp3_min = Vddp3;

		Vext = ((SCU_EVRADCSTAT.B.ADCSWDV-1) * 0.023077f);
		if(Vext > Vext_max)
			Vext_max = Vext;
		if(Vext < Vext_min)
			Vext_min = Vext;
	}

	/* die temperature measurement */
	/* we ignore result if DTS is busy */
	if (IfxDts_Dts_isBusy() == FALSE)
	{
		die_temp =  IfxDts_Dts_getTemperatureCelsius();
		/* start a new measurement */
		IfxDts_Dts_startSensor();

		//limit checking for highest
		if(die_temp > die_highest)
			die_highest = die_temp;

		//limit checking for lowest value, all values under -60 °C are not valid -> ignore first conversion for self-calibration
		if((die_temp < die_lowest)||(die_lowest < -60.0f))
			die_lowest = die_temp;
	}
}

