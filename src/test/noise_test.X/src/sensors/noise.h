#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H

#include "../adc/adc.h" 

#define NOISE_CHANNEL 0b1000

uint16_t best_noise = 0x0000;

uint16_t read_noise_channel(void);
void take_best_noise(uint16_t);
void reset_best_noise(void);

#endif	/* XC_HEADER_TEMPLATE_H */

