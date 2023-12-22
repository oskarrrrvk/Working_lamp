#ifndef HUMIDITY_H
#define HUMIDITY_H

#include "../adc/adc.h"

#define HUMIDITY_PORT 0b1100

float read_humidity_channel(void); //True RH = (Sensor RH)/(1.0546 ? 0.00216T),

#endif

