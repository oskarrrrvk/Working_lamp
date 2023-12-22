
#ifndef CO2_H
#define	CO2_H

#include "../protocols/I2C/i2c-v2.h"

#define CO2_ADDRESS  0xB5

uint16_t read_co2_environment(void);

#endif

