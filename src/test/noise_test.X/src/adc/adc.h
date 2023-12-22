#ifndef ADC_H
#define	ADC_H

#include <xc.h>

#define ADCS_Fosc 0b10

void config_adc_channel (void);
uint16_t read_adc_channel (void);

#endif	/* XC_HEADER_TEMPLATE_H */

