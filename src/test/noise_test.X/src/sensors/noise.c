#include "noise.h"

uint16_t read_noise_channel ()
{
    ADCON0bits.CHS = NOISE_CHANNEL;
    return read_adc_channel ();
}

void take_best_noise(uint16_t noise)
{
    if(best_noise < noise)
        best_noise = noise;
}

void reset_best_noise ()
{
    best_noise = 0;
}