 
#ifndef LUMINOSITY_H
#define	LUMINOSITY_H

#include "../protocols/i2c-v2.h"

#define LUM_ADDRESS 0x21


void  config_luminosity (void);
float read_luminosity (void);//OUTPUT DATA [dec.] / ALS sensitivity) x (10 / IT [ms]).


#endif

