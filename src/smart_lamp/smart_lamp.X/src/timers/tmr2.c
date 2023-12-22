#include "tmr2.h"

void config_tmr2 (void)
{
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    
    T2CONbits.TMR2ON = 1; //Encender timer 2
    T2CONbits.T2CKPS = 0b10; //Preescalado de 16
    T2CONbits.TOUTPS = 0b0000; //Postescalado de 1
    
    PIE1bits.TMR2IE= 1; //Interrupt enable
    PIR1bits.TMR2IF = 0; //Interrupt flag
    
    PR2 = N;
}
