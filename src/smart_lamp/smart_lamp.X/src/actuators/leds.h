#ifndef LEDS_H
#define	LEDS_H

#include "../protocols/SPI/spi-master-v1.h"

void change_brightness_lamp(uint8_t);//brightness =  0xE0 | brightness;
void change_color_lamp(uint8_t,uint8_t,uint8_t);

#endif	/* XC_HEADER_TEMPLATE_H */

