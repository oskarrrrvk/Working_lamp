#include "leds.h"


void change_brightness_lamp (uint8_t brightness)
{
    spi_write_read (brightness);
}
void change_color_lamp (uint8_t R, uint8_t G, uint8_t B)
{
    spi_write_read (R);    
    spi_write_read (G);
    spi_write_read (B);

}
