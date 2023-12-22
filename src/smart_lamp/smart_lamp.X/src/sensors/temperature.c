#include "temperature.h"

float read_temperature()
{
    ADCON0bits.CHS = TEMPERATURE_CHANNEL;
    uint16_t adc_value = read_adc_channel();
    return (float)adc_value / 10;
}
