/*
 * Measurement.h
 *
 *  Created on: 02.03.2015
 *      Author: dienst
 */

#ifndef MEASUREMENT_H_
#define MEASUREMENT_H_

void measurement_init(void);

#if defined(__DCC__)
    #if ISR_PROVIDER_MEASUREMENT == 0
	#pragma section DATA ".data_cpu0" ".bss_cpu0" far-absolute RW
    #elif ISR_PROVIDER_MEASUREMENT == 1
	#pragma section DATA ".data_cpu1" ".bss_cpu1" far-absolute RW
    #elif ISR_PROVIDER_MEASUREMENT == 2
	#pragma section DATA ".data_cpu2" ".bss_cpu2" far-absolute RW
	#endif
#endif

extern float32 die_temp;
extern float32 die_highest;
extern float32 die_lowest;

extern float32 core_voltage;
extern float32 core_volt_min;
extern float32 core_volt_max;

extern float32 Vddp3;
extern float32 Vddp3_min;
extern float32 Vddp3_max;

extern float32 Vext;
extern float32 Vext_min;
extern float32 Vext_max;


#endif /* MEASUREMENT_H_ */
