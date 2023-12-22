#include "tmr0.h"

void config_tmr0()
{
    INTCONbits.GIE = 1;
    INTCONbits.T0IE = 1;
    OPTION_REGbits.T0CS = 0;
    OPTION_REGbits.PSA = 0;
    OPTION_REGbits.PS = 0b110;
    TMR0 = 61;
    INTCONbits.T0IF = 0;
}


