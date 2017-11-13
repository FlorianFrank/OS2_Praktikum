/**
 * \file Stm_Cfg.c
 * \brief STM configuration
 *
 * \license
 * You can use this file under the terms of the IFX License.
 *
 * This file is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 * PURPOSE.  See the IFX License for more details (IFX_License.txt).
 *
 * This file may be used, copied, and distributed, with or without modification, provided
 * that all copyright notices are retained; that all modifications to this file are
 * prominently noted in the modified file; and that this paragraph is not modified.
 *
 * \copyright Copyright (C) 2012 Infineon Technologies AG
 * \author Simon Achatz <Simon.Achatz@Infineon.com>
 *
 * $Revision: 1 $
 * $Date: 2013-03-04 14:11:48 +0100 (Mon, 04 Mar 2013) $
 *
 * \defgroup configuration_comm_ascif ASC
 * \ingroup configuration_comm
 */

#include "Interrupts_Cfg.h"
#include "Stm/Std/IfxStm.h"

#include "Os.h"


volatile uint32 Core1_Stm_1ms = 0;
volatile uint32 Core2_Stm_1ms = 0;




void initStm1(void)
{
    Ifx_STM             *stm = &MODULE_STM1;
    IfxStm_CompareConfig stmCompareConfig;

    // suspend by debugger enabled
    IfxStm_enableOcdsSuspend(stm);

    //Call the constructor of configuration
    IfxStm_initCompareConfig(&stmCompareConfig);
    //Modify only the number of ticks and enable the trigger output
    stmCompareConfig.ticks                   = IfxStm_getLower(stm) + IFX_CFG_STM_TICKS_PER_MS; /*Interrupt after 1ms from now */
    stmCompareConfig.triggerPriority		 = ISR_PRIORITY_STM_1;
    stmCompareConfig.typeOfService           = IfxSrc_Tos_cpu1;

    //Now Compare functionality is initialized
    IfxStm_initCompare(stm, &stmCompareConfig);
}




IFX_INTERRUPT(ISR_Stm_1, 0, ISR_PRIORITY_STM_1);

/**
 * \ingroup interrupts
 *
 * This interrupt is raised by the STM1. The initialization is done by initStm1().
 *
 * \isrProvider 1
 * \isrPriority \ref ISR_PRIORITY_STM_1
 */
uint32 Core1_Stm_1ms_old = 0;
void ISR_Stm_1(void)
{
    Ifx_STM *stm = &MODULE_STM1;
    IfxStm_updateCompare(stm, IfxStm_Comparator_0, IfxStm_getLower(stm) + IFX_CFG_STM_TICKS_PER_MS);
    Core1_Stm_1ms++;
    if(Core1_Stm_1ms == (Core1_Stm_1ms_old+100))
	{	Core1_Stm_1ms_old = Core1_Stm_1ms;
		IfxPort_setPinState(&MODULE_P13, 3, IfxPort_State_toggled);
	}
    CounterTick(IFX_OSTASK_COUNTER);
}



