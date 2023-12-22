#ifndef TEMPERATURE_H
#define	TEMPERATURE_H

#include "../adc/adc.h"

#define TEMPERATURE_CHANNEL 0b1010

float read_temperature(void);

#endif

