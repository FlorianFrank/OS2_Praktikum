/**
 * \file OSTasks.c
 * \brief OS task definitions.
 *
 * \copyright Copyright (c) 2012 Infineon Technologies AG. All rights reserved.
 *
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 */

#include <Cpu/Std/Ifx_Types.h>
#include <Stm/Std/IfxStm.h>
#include "Cpu_Main.h"
#include <Power/TLF35584.h>
#include <Rtc/RTC.h>
#include <DemoApp/Measurement.h>
#include <DemoApp/background_light.h>
#include <DemoApp/Perf_Meas.h>
#include "Configuration.h"
#include <Tft/conio_tft.h>
#include "main_appl.h"
#include <Beeper/Beeper.h>
#include "EthDemo.h"

#include "os.h"

#define OS_TICK_IN_SECONDS (0.0001)
#define BLINKLED_INTERVAL_SECONDS (0.05)

#if (defined(__OO_ECC1__) || defined(__OO_ECC2__))
#define Ifx_OSTask_ClearEvent(x) ClearEvent(x)
#define Ifx_OSTask_WaitEvent(x) WaitEvent(x)
#define Ifx_OSTask_SetEvent(x,y) SetEvent(x,y)
#endif
#if (defined(__OO_BCC1__) || defined(__OO_BCC2__))
#define Ifx_OSTask_ClearEvent(x)
#define Ifx_OSTask_WaitEvent(x)
#define Ifx_OSTask_SetEvent(x,y)
#endif

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
App_Cpu g_AppCpu0; /**< \brief CPU 0 global data */
/* this variables are initialized by c_init and accessible from all CPUs */
volatile boolean tft_ready = 0;

extern volatile uint32 cpu0_idle_counter;
extern volatile uint32 cpu0_ccnt_diff_min;

extern TIME Time2Set;
extern TCONTROLMENU controlmenu;

extern void disk_timerproc(void);

void Ifx_OSTask_ApplicationInit(void) {
	StartOS(TRICORE_CPU);
}

/*Define an ISR category 1 to trigger OS ticks
 * Category 2 ISR is not needed here the call
 * CounterTick is not restricted*/
IFX_INTERRUPT(Ifx_OSTask_OSTickIsr, 0, ISR_PRIORITY_OS_TICK)
{
	uint32 stmTicks;
	stmTicks= (uint32)(OS_TICK_IN_SECONDS * IfxStm_getFrequency (&MODULE_STM0));
	IfxStm_updateCompare (&MODULE_STM0, IfxStm_Comparator_0, IfxStm_getCompare (&MODULE_STM0, IfxStm_Comparator_0) + stmTicks);
	__enable ();
	CounterTick(IFX_OSTASK_COUNTER);
}

uint32 stmTicks;
/*Define an ISR category 2 to trigger events.
 * Category 2 ISR needed here because of the call restriction
 * with SetEvent API*/
IFX_INTERRUPT_CATEGORY2(Ifx_OSTask_BlinkLedIsr,0,ISR_PRIORITY_STM_0_EVENT) {
	/*uint32*/stmTicks;
	stmTicks = (uint32) (BLINKLED_INTERVAL_SECONDS
			* IfxStm_getFrequency(&MODULE_STM0));
	IfxStm_updateCompare(&MODULE_STM0, IfxStm_Comparator_1,
			IfxStm_getCompare(&MODULE_STM0, IfxStm_Comparator_1) + stmTicks);
	__enable();

	//Ifx_OSTask_SetEvent (IFX_OSTASK_EVENT1, 1);
}

/*Initialize theSTM 0 and set the comparator 0 to trigger OS counter*/
void Ifx_OSTask_initStm0Ticks(void) {
	IfxStm_CompareConfig stmCompareConfig;

	IfxStm_enableOcdsSuspend(&MODULE_STM0);

	//Call the constructor of configuration
	IfxStm_initCompareConfig(&stmCompareConfig);
	//Modify only the number of ticks and enable the trigger output
	stmCompareConfig.ticks = 1000000; /*Interrupt after 100 ticks from now */
	stmCompareConfig.triggerPriority = ISR_PRIORITY_OS_TICK;
	stmCompareConfig.typeOfService = IfxSrc_Tos_cpu0;

	//Now Compare functionality is initialized
	IfxStm_initCompare(&MODULE_STM0, &stmCompareConfig);
}

/*Initialize theSTM 0 and set the comparator 1 to trigger an interrupt
 * which will in turn trigger event 1*/
void Ifx_OSTask_initBlinkyLedFunction(void) {
	IfxStm_CompareConfig stmCompareConfig;

	//IfxStm_enableOcdsSuspend (&MODULE_STM0);

	//Call the constructor of configuration
	IfxStm_initCompareConfig(&stmCompareConfig);
	//Select comparator 1
	stmCompareConfig.comparator = IfxStm_Comparator_1;
	stmCompareConfig.comparatorInterrupt = IfxStm_ComparatorInterrupt_ir1;
	//Modify only the number of ticks and enable the trigger output
	stmCompareConfig.ticks = 1000; /*Interrupt after 100 ticks from now */
	stmCompareConfig.triggerPriority = 0; //ISR_PRIORITY_STM_0_EVENT;
	stmCompareConfig.typeOfService = IfxSrc_Tos_cpu0;

	//Now Compare functionality is initialized
	IfxStm_initCompare(&MODULE_STM0, &stmCompareConfig);

	IfxPort_setPinModeOutput(&MODULE_P13, 0, IfxPort_OutputMode_pushPull,
			IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(&MODULE_P13, 1, IfxPort_OutputMode_pushPull,
			IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(&MODULE_P13, 2, IfxPort_OutputMode_pushPull,
			IfxPort_OutputIdx_general);
	IfxPort_setPinModeOutput(&MODULE_P13, 3, IfxPort_OutputMode_pushPull,
			IfxPort_OutputIdx_general);

}

uint32 Ifx_OSTask_Event1_Count;
uint8 Ifx_OSTask_LedNum;

TASK(IFX_OSTASK_EVENT1) {
	while (1) {
		Ifx_OSTask_ClearEvent(1);
		Ifx_OSTask_WaitEvent(1);
		Ifx_OSTask_Event1_Count++;
		{

			Ifx_OSTask_LedNum++;
			if ((Ifx_OSTask_LedNum > 2))
				Ifx_OSTask_LedNum = 0;
			IfxPort_setPinState(&MODULE_P13, Ifx_OSTask_LedNum,
					IfxPort_getPinState(&MODULE_P13, Ifx_OSTask_LedNum) ?
							IfxPort_State_low : IfxPort_State_high);
		}
	}
	TerminateTask();
}
TASK(IFX_OSTASK_BEEPER) {
	beeper_init();
	while (1) {

		volatile int counter = 10000000;

		beeper_on();
		while (counter > 0) {
			counter--;
		}
		beeper_off();
	}
	TerminateTask();
}

TASK(IFX_OSTASK_BLINK) {

	IfxPort_setPinState(&MODULE_P13, 0,
			IfxPort_getPinState(&MODULE_P13, 0) ?
					IfxPort_State_low : IfxPort_State_high);

}

uint32 Ifx_OSTask_Event2_Count;
TASK(IFX_OSTASK_EVENT2) {
	uint8 data[8] = { 1, 2, 3, 4, 5, 6, 7, 8 };
	Ifx_OSTask_Event2_Count++;
	{
		/*Call your event 2 related functions here*/
		EthDemo_transmit(&g_Eth, 8, &myMacAddress[0], &data[0]);
	}
	TerminateTask();
}

uint32 Ifx_OSTask_Event3_Count;
uint8 ethernet_Data[8];
TASK(IFX_OSTASK_EVENT3) {
	uint32 packetSize;
	Ifx_OSTask_Event3_Count++;
	{
		/*Call your event 3 related functions here*/
		EthDemo_receive(&g_Eth, &packetSize, &myMacAddress[0],
				&ethernet_Data[0]);
	}
	TerminateTask();
}

uint32 Ifx_OSTask_1ms_Count;
TASK(IFX_OSTASK_1MS) {
	Ifx_OSTask_1ms_Count++;
	{
		/*Call your 1ms functions here*/
		/* increment the ms value */
		g_AppCpu0.TickCount_1ms++;

		/* action to do each 1ms */
	}
	TerminateTask();
}

uint32 Ifx_OSTask_5ms_Count;
TASK(IFX_OSTASK_5MS) {
	Ifx_OSTask_5ms_Count++;
	{
		/*Call your 5ms functions here*/
	}
	TerminateTask();
}

extern void periodic_func(void);

uint32 Ifx_OSTask_10ms_Count;
TASK(IFX_OSTASK_10MS) {
	Ifx_OSTask_10ms_Count++;
	{
		/*Call your 10ms functions here*/
		disk_timerproc(); // we call the disc timer procedure each 10ms to calculate the timeouts

		if (conio_driver.dialogmode == SLIDESHOW)
			IfxSrc_setRequest(&TFT_UPDATE_IRQ);    //trigger the tft lib
		}
	TerminateTask();
}

uint32 Ifx_OSTask_20ms_Count;
TASK(IFX_OSTASK_20MS) {
	Ifx_OSTask_20ms_Count++;
	{
		/*Call your 20ms functions here*/
	}
	TerminateTask();
}

uint32 Ifx_OSTask_50ms_Count;
TASK(IFX_OSTASK_50MS) {
	Ifx_OSTask_50ms_Count++;
	{
		/*Call your 100ms functions here*/

		if (conio_driver.dialogmode != SLIDESHOW)
			IfxSrc_setRequest(&TFT_UPDATE_IRQ);    //trigger the tft lib
		}
	TerminateTask();
}

uint32 Ifx_OSTask_100ms_Count;

TASK(IFX_OSTASK_100MS) {
	Ifx_OSTask_100ms_Count++;
	{
		/*Call your 100ms functions here*/
		controlmenu.cpuseconds += controlmenu.cpusecondsdelta;
		if (Ifx_OSTask_100ms_Count & 0x01) {
			ActivateTask(IFX_OSTASK_EVENT2); // Activate Task for sending ethernet frame
		} else {
			ActivateTask(IFX_OSTASK_EVENT3); // Activate Task for receiving ethernet frame
		}

	}
	TerminateTask();
}

uint32 Ifx_OSTask_1000ms_Count;
TASK(IFX_OSTASK_1000MS) {
	Ifx_OSTask_1000ms_Count++;
	{
		/*Call your 1000ms functions here*/

	}
	TerminateTask();
}

uint32 Ifx_OSTask_Background_Count;

TASK(IFX_OSTASK_BACKGROUND) {
	Ifx_OSTask_Background_Count++;
	/*Add your code here*/

	while (1) {

	}
	TerminateTask();
}

uint32 errorCount;
void ErrorHook(StatusType Error) {
	errorCount = (uint32) Error;
}

extern void initConsole(void);
extern void tft_appl_init(uint8 RtcRunning);

TASK(IFX_OSTASK_INIT) {
	__enable();

	/* Set Beeper to low */
	IfxPort_setPinModeOutput(BEEPER.pin.port, BEEPER.pin.pinIndex,
			IfxPort_OutputMode_openDrain, IfxPort_OutputIdx_general); //Set Pin33_0 as GP-Out

	/* we enable the background light Application Kit */
	IfxPort_setPinModeOutput(BACKGROUND_LIGHT.pin.port,
	BACKGROUND_LIGHT.pin.pinIndex, IfxPort_OutputMode_pushPull,
			IfxPort_OutputIdx_alt1);

	Ifx_OSTask_initStm0Ticks();
	Ifx_OSTask_initBlinkyLedFunction();

	/* TLF init */
	IfxTLF35584_init();
	/* Disable Window Watchdog and ERR pin */
	IfxTLF35584_unprotect_register();
	IfxTLF35584_disable_window_watchdog();
	IfxTLF35584_disable_err_pin_monitor();
	IfxTLF35584_protect_register();

	/* Initialise the application state */
	g_AppCpu0.info.pllFreq = IfxScuCcu_getPllFrequency();
	g_AppCpu0.info.cpuFreq = IfxScuCcu_getCpuFrequency(IfxCpu_getCoreId());
	g_AppCpu0.info.sysFreq = IfxScuCcu_getSpbFrequency();
	g_AppCpu0.info.stmFreq = IfxStm_getFrequency(&MODULE_STM0);
	g_AppCpu0.TickCount_1ms = 0;

	IfxGtm_enable(&MODULE_GTM);
	// we set the global clock to 100MHz
	IfxGtm_Cmu_setGclkFrequency(&MODULE_GTM, 100000000.0f);
	// set CMU0 frequency
	IfxGtm_Cmu_setClkFrequency(&MODULE_GTM, IfxGtm_Cmu_Clk_0, 100000000.0f);
	// enable CMU0 clock
	IfxGtm_Cmu_enableClocks(&MODULE_GTM, IFXGTM_CMU_CLKEN_CLK0);
	// enable FX clock
	IfxGtm_Cmu_enableClocks(&MODULE_GTM, IFXGTM_CMU_CLKEN_FXCLK);
	// Init Console
	//initConsole();

	EthDemo_init();

	/* Init the RTC driver */
	rtc_init();

	/* get the actual time */
	rtc_gettime(&Time2Set);

	/* correct the date and month if needed */
	if (Time2Set.date == 0)
		Time2Set.date = 0x01;
	if (Time2Set.month == 0)
		Time2Set.month = 0x01;
	/* clear all flags if it is not running */
	if (Time2Set.flags.B.running == 0)
		Time2Set.flags.U = 0x0;

	/* Init TFT-display */
	tft_appl_init(Time2Set.flags.B.running);

	/* setup our name string */
	conio_ascii_printfxy(DISPLAYSTDOUT0, 1, 0, (uint8 *) VERSION_TEXT);

	/* initialize Acoustic Transducer */
	beeper_init();

	/* Init the backroundlight */
	background_light_init();

	graph_drawInfineonLogo();

	/* Switch TLF to normal state */
	IfxTLF35584_goto_normal_state();

	/*Add your initialization code here*/
	ActivateTask(IFX_OSTASK_BACKGROUND);
	SetRelAlarm(IFX_OSTASK_ALARM_1MS, 5, 10);
	SetRelAlarm(IFX_OSTASK_ALARM_5MS, 25, 50);
	SetRelAlarm(IFX_OSTASK_ALARM_10MS, 50, 100);
	SetRelAlarm(IFX_OSTASK_ALARM_20MS, 100, 200);
	SetRelAlarm(IFX_OSTASK_ALARM_50MS, 250, 500);
	SetRelAlarm(IFX_OSTASK_ALARM_100MS, 500, 1000);
	//SetRelAlarm(IFX_OSTASK_ALARM_BEEPER, 500, 1000);
	SetRelAlarm(IFX_OSTASK_ALARM_LEDS, 500, 1000);
	//SetRelAlarm(IFX_OSTASK_ALARM_1000MS,5000,10000);

	ActivateTask(IFX_OSTASK_EVENT1);

	TerminateTask();
}
