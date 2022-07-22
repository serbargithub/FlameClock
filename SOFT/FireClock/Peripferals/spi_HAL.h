#ifndef _SPI_HAL_H_
#define _SPI_HAL_H_

#ifdef	__cplusplus
extern "C" {
#endif

void HAL_SPI__Init(void);
unsigned char HAL_SPI__SendByte(char);
unsigned char HAL_SPI__GetByte(void);

#ifdef	__cplusplus
}
#endif

#endif //_SPI_HAL_H_
