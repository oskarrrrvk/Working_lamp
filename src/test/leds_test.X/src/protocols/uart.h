#ifndef UART_H
#define UART_H

#include <xc.h>
#include <stdio.h>
 
void config_uart  (void);
void send_uint16t_to_uart (char*,uint16_t);
void send_float_to_uart (char*,float);
uint8_t receive_uart (void);

#endif