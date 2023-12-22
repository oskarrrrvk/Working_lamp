#pragma config CPD = OFF, BOREN = OFF, IESO = OFF, DEBUG = OFF, FOSC = HS
#pragma config FCMEN = OFF, MCLRE = ON, WDTE = OFF, CP = OFF, LVP = OFF
#pragma config PWRTE = ON, BOR4V = BOR21V, WRT = OFF

#pragma intrinsic(_delay)
#define _XTAL_FREQ 20000000 // necessary for __delay_us

#include <xc.h>

#include "src/timers/tmr0.h"
#include "src/adc/adc.h"
#include "src/sensors/humidity.h"
#include "src/protocols/uart.h"


float humidity = 0.0; 
int counter = 0;

void main(void) {
    config_adc_channel ();
    config_tmr0 ();
    config_uart ();
    
    while(1);
    return;
}

void __interrupt() humidity_interruption()
{
    INTCONbits.T0IF = 0;
    if(counter == 100)
    {
        humidity = read_humidity_channel();
        send_float_to_uart ("humidity",humidity);
        counter = 0;
    }
    counter ++;
}
