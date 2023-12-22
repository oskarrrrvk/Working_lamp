#include "adc.h"

void config_adc_channel (void)
{
    ADCON0bits.ADON = 1;
    ADCON1bits.VCFG0 = 0;
    ADCON1bits.VCFG1 = 0;
    ADCON1bits.ADFM  = 1;
    ADCON0bits.ADCS  = ADCS_Fosc; 
}

uint16_t read_adc_channel()
{
    uint16_t adc_value;
    ADCON0bits.GO = 1;
    adc_value = ADRESH;
    adc_value = (adc_value << 8) | ADRESL; 
    return adc_value & 0x03FF;
}