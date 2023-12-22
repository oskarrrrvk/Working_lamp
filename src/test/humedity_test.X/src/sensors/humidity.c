#include "humidity.h"

float read_humidity_channel()
{
    ADCON0bits.CHS  = HUMIDITY_PORT;
    uint16_t adc_value = read_adc_channel();
    return ((float)adc_value - 0.826)/0.0315; //(VOUT - 0.826)/0.0315
}
