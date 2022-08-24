#ifndef _DEFINITIONS_H_
#define _DEFINITIONS_H_

#ifdef	__cplusplus
extern "C" {
#endif
    
#include <stdint.h>

#define	DEVICE_NAME "FlameClock"
#define	DEVICE_VERSION "HW:01 SW:1.0.1" 
#define	BUILD_TIME  __TIME__
#define	BUILD_DATE  __DATE__

//-------

#define HORIZONTAL_BYTES_MAX 13
#define HORIZONTAL_PIXEL_MAX 100
#define VERTICAL_LINES_MAX 100    
    
#define MAX_BUF_RX_COM 254

typedef struct {
    uint8_t data[VERTICAL_LINES_MAX][HORIZONTAL_BYTES_MAX];
} DisplayFrame_t;

#ifdef	__cplusplus
}
#endif

#endif //_DEFINITIONS_H_


