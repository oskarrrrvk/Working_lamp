#include "uart.h"

void config_uart()
{
  TXSTAbits.BRGH = 0;
  BAUDCTLbits.BRG16 = 0;

  // SPBRGH:SPBRG = 
  SPBRGH = 0;
  SPBRG = 32;  // 9600 baud rate with 20MHz Clock
  
  TXSTAbits.SYNC = 0; /* Asynchronous */
  TXSTAbits.TX9  = 0; /* TX 8 data bit */
  RCSTAbits.RX9  = 0; /* RX 8 data bit */

  PIE1bits.TXIE = 0; /* Disable TX interrupt */
  PIE1bits.RCIE = 1; /* Disable RX interrupt */

  RCSTAbits.SPEN = 1; /* Serial port enable */

  TXSTAbits.TXEN = 0; /* Reset transmitter */
  TXSTAbits.TXEN = 1; /* Enable transmitter */
  
  RCSTAbits.CREN = 0; /* Reset receiver */
  RCSTAbits.CREN = 1; /* Enable receiver */
  
}

void send_uint16t_to_uart (char* name,uint16_t value)
{
    printf("%s value: [%i] \r\n",name,value);
}

void send_float_to_uart(char *name, float value)
{
    printf("%s value: [%.2f] \r\n",name,value);

}

uint8_t receive_uart ()  // luego castear a int y dividirlo entre 100
{
    PIR1bits.RCIF = 0;
    return RCREG;
}

void putch (char data) 
{
    while(!TXIF) // check buffer
        continue; // wait till ready
    TXREG = data; // send data
}