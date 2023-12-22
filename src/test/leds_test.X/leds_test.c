#pragma config CPD = OFF, BOREN = OFF, IESO = OFF, DEBUG = OFF, FOSC = HS
#pragma config FCMEN = OFF, MCLRE = ON, WDTE = OFF, CP = OFF, LVP = OFF
#pragma config PWRTE = ON, BOR4V = BOR21V, WRT = OFF

#pragma intrinsic(_delay)
#define _XTAL_FREQ 20000000 // necessary for __delay_us

#include <xc.h>

#include "src/protocols/SPI/spi-master-v1.h"
#include "src/protocols/uart.h"

uint8_t lamp[4],serial;
int i,j;

void main(void) {
    config_uart();
    while(1);
    return;
}

void __interrupt() leds_interruption()
{
    PIR1bits.RCIF = 0;
    serial = receive_uart();
    if(serial == 'R')
    {
        lamp[0] = receive_uart();
        for(i = 1; i < 8; i++)
            for(j = 0; j < 2; j++)
                lamp[i] = receive_uart();
        change_color_lamp (lamp[0],lamp[1],lamp[2]);
        change_brightness_lamp(lamp[3]);
    }
}
