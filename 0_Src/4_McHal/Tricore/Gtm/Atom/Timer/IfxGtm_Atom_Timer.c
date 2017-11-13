/**
 * \file IfxGtm_Atom_Timer.c
 * \brief GTM TIMER details
 *
 * \version iLLD_1_0_0_11_0
 * \copyright Copyright (c) 2013 Infineon Technologies AG. All rights reserved.
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

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxGtm_Atom_Timer.h"
#include "_Utilities/Ifx_Assert.h"
#include "IfxGtm_bf.h"
#include "stddef.h"

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

boolean IfxGtm_Atom_Timer_acknowledgeTimerIrq(IfxGtm_Atom_Timer *driver)
{
    boolean event;
    event = IfxGtm_Atom_Ch_isZeroNotification(driver->atom, driver->timerChannel);

    if (event)
    {
        IfxGtm_Atom_Ch_clearZeroNotification(driver->atom, driver->timerChannel);
    }
    else
    {}

    return event;
}


boolean IfxGtm_Atom_Timer_acknowledgeTriggerIrq(IfxGtm_Atom_Timer *driver)
{
    boolean event;
    event = IfxGtm_Atom_Ch_isOneNotification(driver->atom, driver->triggerChannel);

    if (event)
    {
        IfxGtm_Atom_Ch_clearOneNotification(driver->atom, driver->triggerChannel);
    }
    else
    {}

    return event;
}


void IfxGtm_Atom_Timer_addToChannelMask(IfxGtm_Atom_Timer *driver, uint16 mask)
{
    driver->channelsMask |= mask;
}


void IfxGtm_Atom_Timer_applyUpdate(IfxGtm_Atom_Timer *driver)
{
    IfxGtm_Atom_Agc_enableChannelsUpdate(driver->agc, driver->channelsMask, 0);
}


void IfxGtm_Atom_Timer_disableUpdate(IfxGtm_Atom_Timer *driver)
{
    IfxGtm_Atom_Agc_enableChannelsUpdate(driver->agc, 0, driver->channelsMask);
}


float32 IfxGtm_Atom_Timer_getFrequency(IfxGtm_Atom_Timer *driver)
{
    return 1.0 / IfxStdIf_Timer_tickToS(driver->base.clockFreq, driver->base.period);
}


float32 IfxGtm_Atom_Timer_getInputFrequency(IfxGtm_Atom_Timer *driver)
{
    return driver->base.clockFreq;
}


Ifx_TimerValue IfxGtm_Atom_Timer_getOffset(IfxGtm_Atom_Timer *driver)
{
    return driver->offset;
}


Ifx_TimerValue IfxGtm_Atom_Timer_getPeriod(IfxGtm_Atom_Timer *driver)
{
    return driver->base.period;
}


volatile uint32 *IfxGtm_Atom_Timer_getPointer(IfxGtm_Atom_Timer *driver)
{
    return IfxGtm_Atom_Ch_getTimerPointer(driver->atom, driver->timerChannel);
}


float32 IfxGtm_Atom_Timer_getResolution(IfxGtm_Atom_Timer *driver)
{
    return 1.0 / driver->base.clockFreq;
}


Ifx_TimerValue IfxGtm_Atom_Timer_getTrigger(IfxGtm_Atom_Timer *driver)
{
    return IfxGtm_Atom_Ch_getCompareOne(driver->atom, driver->triggerChannel) - 1;
}


volatile uint32 *IfxGtm_Atom_Timer_getTriggerPointer(IfxGtm_Atom_Timer *driver)
{
    return IfxGtm_Atom_Ch_getCompareOnePointer(driver->atom, driver->triggerChannel);
}


boolean IfxGtm_Atom_Timer_init(IfxGtm_Atom_Timer *driver, const IfxGtm_Atom_Timer_Config *config)
{
    /* FIXME Add the case when no trigger is defiend config->triggerOut = NULL
     * FIXME Check if pwm is configured (IfxGtm_Atom_Ch_configurePwmMode) if if (triggerChannel == driver->timerChannel)
     * Check similar issue on TOM */
    boolean                 result = TRUE;
    IfxGtm_Atom_Timer_Base *base   = &driver->base;

    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, config->base.countDir == IfxStdIf_Timer_CountDir_up); /* only this mode is supported */

    driver->gtm          = config->gtm;
    driver->atomIndex    = config->atom;
    driver->atom         = &config->gtm->ATOM[config->atom];
    driver->timerChannel = config->timerChannel;

    base->triggerEnabled = config->base.trigger.enabled;

    if (base->triggerEnabled)
    {
        driver->triggerChannel = config->triggerOut->channel;
    }
    else
    {
        driver->triggerChannel = driver->timerChannel; // Set to timer channel to disable its use
    }

    driver->agc = (Ifx_GTM_ATOM_AGC *)&driver->atom->AGC.GLB_CTRL;

    /* Initialize the timer part */
    IfxGtm_Atom_Ch_configurePwmMode(driver->atom, driver->timerChannel, config->clock,
        config->base.trigger.risingEdgeAtPeriod, IfxGtm_Atom_Ch_ResetEvent_onCm0,
        IfxGtm_Atom_Ch_OutputTrigger_generate);

    IfxGtm_Atom_Timer_updateInputFrequency(driver);

    if ((config->base.minResolution > 0) && ((1.0 / base->clockFreq) > config->base.minResolution))
    {
        result = FALSE;
        IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, FALSE);
    }

    result        &= IfxGtm_Atom_Timer_setFrequency(driver, config->base.frequency);
    driver->offset = IfxStdIf_Timer_sToTick(driver->base.clockFreq, 1.0 / config->base.frequency * config->base.startOffset);

    /* check that driver->offset is not more than 24 bits */
    if (driver->offset <= 0xFFFFFF)
    {
        IfxGtm_Atom_Ch_setCounterValue(driver->atom, driver->timerChannel, driver->offset);
    }
    else
    {
        result = FALSE;
        IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, FALSE);
    }

    /* Initialize the trigger part */
    driver->channelsMask = 1 << driver->timerChannel;

    if (base->triggerEnabled)
    {
        IfxGtm_Atom_Ch triggerChannel     = driver->triggerChannel;
        uint16         triggerChannelMask = 1 << triggerChannel;

        IfxGtm_Atom_Ch_setSignalLevel(driver->atom, triggerChannel, config->base.trigger.risingEdgeAtPeriod ? Ifx_ActiveState_high : Ifx_ActiveState_low);

        IfxGtm_Atom_Ch_setCounterValue(driver->atom, triggerChannel, driver->offset);

        if (triggerChannel != driver->timerChannel)
        {
            IfxGtm_Atom_Ch_configurePwmMode(driver->atom, triggerChannel, config->clock,
                config->base.trigger.risingEdgeAtPeriod, IfxGtm_Atom_Ch_ResetEvent_onTrigger,
                IfxGtm_Atom_Ch_OutputTrigger_forward);
            IfxGtm_Atom_Agc_enableChannels(driver->agc, triggerChannelMask, 0, FALSE);
            driver->channelsMask |= triggerChannelMask;
        }

        /* Signal must go out of the GTM even if the port outpout is not enabled */
        IfxGtm_Atom_Agc_enableChannelsOutput(driver->agc, triggerChannelMask, 0, FALSE);

        if (config->base.trigger.outputEnabled)
        {
            /* Initialize the port */
            IfxGtm_PinMap_setAtomTout(config->triggerOut, config->base.trigger.outputMode, config->base.trigger.outputDriver);
        }

        result &= IfxGtm_Atom_Timer_setTrigger(driver, config->base.trigger.triggerPoint);
    }

    /* Interrupt configuration */
    {
        volatile Ifx_SRC_SRCR *src;
        boolean                timerHasIrq   = config->base.isrPriority > 0;
        boolean                triggerHasIrq = (config->base.trigger.isrPriority > 0) && base->triggerEnabled;

        if (driver->triggerChannel == driver->timerChannel)
        {
            IfxGtm_Atom_Ch_setNotification(driver->atom, driver->timerChannel, timerHasIrq ? config->irqModeTimer : config->irqModeTrigger, timerHasIrq, triggerHasIrq);
            src = IfxGtm_Atom_Ch_getSrcPointer(driver->gtm, config->atom, driver->timerChannel);
            IfxSrc_init(src, timerHasIrq ? config->base.isrProvider : config->base.trigger.isrProvider, timerHasIrq ? config->base.isrPriority : config->base.trigger.isrPriority);
            /* FIXME ADD warning on interrupt setting in case timer and trigger uses the same channels or different channels, and in case only timer or trigger or both generates interrupts */
            IfxSrc_enable(src);
        }
        else
        {
            IfxGtm_IrqMode irqMode = IfxGtm_IrqMode_pulseNotify;

            if (timerHasIrq)
            {
                IfxGtm_Atom_Ch_setNotification(driver->atom, driver->timerChannel, irqMode, TRUE, FALSE);
                src = IfxGtm_Atom_Ch_getSrcPointer(driver->gtm, config->atom, driver->timerChannel);
                IfxSrc_init(src, config->base.isrProvider, config->base.isrPriority);
                IfxSrc_enable(src);
            }

            if (triggerHasIrq)
            {
                IfxGtm_Atom_Ch_setNotification(driver->atom, driver->triggerChannel, irqMode, FALSE, TRUE);
                src = IfxGtm_Atom_Ch_getSrcPointer(driver->gtm, config->atom, driver->triggerChannel);
                IfxSrc_init(src, config->base.trigger.isrProvider, config->base.trigger.isrPriority);
                IfxSrc_enable(src);
            }
        }
    }

    /* Transfer the shadow registers */
    IfxGtm_Atom_Agc_setChannelsForceUpdate(driver->agc, driver->channelsMask, 0, 0, 0);
    IfxGtm_Atom_Agc_trigger(driver->agc);
    IfxGtm_Atom_Agc_setChannelsForceUpdate(driver->agc, 0, driver->channelsMask, 0, 0);

    return result;
}


void IfxGtm_Atom_Timer_initConfig(IfxGtm_Atom_Timer_Config *config, Ifx_GTM *gtm)
{
    IfxStdIf_Timer_initConfig(&config->base);
    config->gtm            = gtm;
    config->atom           = IfxGtm_Atom_0;
    config->timerChannel   = IfxGtm_Atom_Ch_0;
    config->triggerOut     = NULL_PTR;
    config->clock          = IfxGtm_Cmu_Clk_0;
    config->base.countDir  = IfxStdIf_Timer_CountDir_up;
    config->irqModeTimer   = IfxGtm_IrqMode_level;
    config->irqModeTrigger = IfxGtm_IrqMode_level;
}


void IfxGtm_Atom_Timer_run(IfxGtm_Atom_Timer *driver)
{
    IfxGtm_Atom_Agc_enableChannels(driver->agc, driver->channelsMask, 0, TRUE);
}


boolean IfxGtm_Atom_Timer_setFrequency(IfxGtm_Atom_Timer *driver, float32 frequency)
{
    Ifx_TimerValue period = IfxStdIf_Timer_sToTick(driver->base.clockFreq, 1.0 / frequency);

    return IfxGtm_Atom_Timer_setPeriod(driver, period);
}


boolean IfxGtm_Atom_Timer_setPeriod(IfxGtm_Atom_Timer *driver, Ifx_TimerValue period)
{
    boolean result = TRUE;
    driver->base.period = period;

    /* check that period is not more that 24 bits */
    if (period <= 0xFFFFFF)
    {
        IfxGtm_Atom_Ch_setCompareZeroShadow(driver->atom, driver->timerChannel, period);

        if (driver->triggerChannel != driver->timerChannel)
        {
            IfxGtm_Atom_Ch_setCompareZeroShadow(driver->atom, driver->triggerChannel, period);
        }
    }
    else
    {
        result = FALSE;
        IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, FALSE);
    }

    return result;
}


void IfxGtm_Atom_Timer_setSingleMode(IfxGtm_Atom_Timer *driver, boolean enabled)
{
    IfxGtm_Atom_Ch_setOneShotMode(driver->atom, driver->timerChannel, enabled);
}


boolean IfxGtm_Atom_Timer_setTrigger(IfxGtm_Atom_Timer *driver, Ifx_TimerValue triggerPoint)
{
    boolean result = TRUE;

    /* check that trigger point is not more that 24 bits */
    if (triggerPoint <= (0xFFFFFF - 1))
    {
        IfxGtm_Atom_Ch_setCompareOneShadow(driver->atom, driver->triggerChannel, triggerPoint + 1);
    }
    else
    {
        result = FALSE;
        IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, FALSE);
    }

    return result;
}


boolean IfxGtm_Atom_Timer_stdIfTimerInit(IfxStdIf_Timer *stdif, IfxGtm_Atom_Timer *driver)
{
    /* *INDENT-OFF* Note: this file was indented manually by the author. */
    /* Set the API link */
    stdif->driver               = driver;
    stdif->getFrequency         =(IfxStdIf_Timer_GetFrequency        )&IfxGtm_Atom_Timer_getFrequency;
    stdif->getPeriod            =(IfxStdIf_Timer_GetPeriod           )&IfxGtm_Atom_Timer_getPeriod;
    stdif->getResolution        =(IfxStdIf_Timer_GetResolution       )&IfxGtm_Atom_Timer_getResolution;
    stdif->getTrigger           =(IfxStdIf_Timer_GetTrigger          )&IfxGtm_Atom_Timer_getTrigger;
    stdif->setFrequency         =(IfxStdIf_Timer_SetFrequency        )&IfxGtm_Atom_Timer_setFrequency;
    stdif->updateInputFrequency =(IfxStdIf_Timer_UpdateInputFrequency)&IfxGtm_Atom_Timer_updateInputFrequency;
    stdif->applyUpdate          =(IfxStdIf_Timer_ApplyUpdate         )&IfxGtm_Atom_Timer_applyUpdate;
    stdif->disableUpdate        =(IfxStdIf_Timer_DisableUpdate       )&IfxGtm_Atom_Timer_disableUpdate;
    stdif->getInputFrequency    =(IfxStdIf_Timer_GetInputFrequency   )&IfxGtm_Atom_Timer_getInputFrequency;
    stdif->run                  =(IfxStdIf_Timer_Run                 )&IfxGtm_Atom_Timer_run;
    stdif->setPeriod            =(IfxStdIf_Timer_SetPeriod           )&IfxGtm_Atom_Timer_setPeriod;
    stdif->setSingleMode        =(IfxStdIf_Timer_SetSingleMode       )&IfxGtm_Atom_Timer_setSingleMode;
    stdif->setTrigger           =(IfxStdIf_Timer_SetTrigger          )&IfxGtm_Atom_Timer_setTrigger;
    stdif->stop                 =(IfxStdIf_Timer_Stop                )&IfxGtm_Atom_Timer_stop;
    stdif->ackTimerIrq          =(IfxStdIf_Timer_AckTimerIrq         )&IfxGtm_Atom_Timer_acknowledgeTimerIrq;
    stdif->ackTriggerIrq        =(IfxStdIf_Timer_AckTriggerIrq       )&IfxGtm_Atom_Timer_acknowledgeTriggerIrq;
    /* *INDENT-ON* */

    return TRUE;
}


void IfxGtm_Atom_Timer_stop(IfxGtm_Atom_Timer *driver)
{
    IfxGtm_Atom_Agc_enableChannels(driver->agc, 0, driver->channelsMask, TRUE);
}


void IfxGtm_Atom_Timer_updateInputFrequency(IfxGtm_Atom_Timer *driver)
{
    driver->base.clockFreq = IfxGtm_Atom_Ch_getClockFrequency(driver->gtm, driver->atom, driver->timerChannel);
}