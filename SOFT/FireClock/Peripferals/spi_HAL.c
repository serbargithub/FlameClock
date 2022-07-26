#include <p24Fxxxx.h>

//-----------------------------------------

void HAL_SPI__Init(void) {
    SPI1CON1 = 0x013F; //freq divided 3D by 16  3E by 8
    SPI1STAT = 0x8000;
}

unsigned char HAL_SPI__SendByte(unsigned char c) {
    SPI1BUF = c;
    while (!SPI1STATbits.SPIRBF);
    return SPI1BUF;
}

unsigned char HAL_SPI__GetByte(void) {
    return HAL_SPI__SendByte(0);
}

