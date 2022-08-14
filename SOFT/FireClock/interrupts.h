#ifndef _INTERRUPTS_H_
#define _INTERRUPTS_H_

#ifdef	__cplusplus
extern "C" {
#endif
#include "definitions.h"    

typedef struct {
    unsigned char data[VERTICAL_LINES_MAX][HORIZONTAL_BYTES_MAX];
} DisplayFrame_t;
    
void Interrupt__Setup(void);
void Interrupt__ShowFrame(DisplayFrame_t* displayFrame);
bool Interrupt__IsFrameEnd();
char Interrupt__GetUART1RX();

#ifdef	__cplusplus
}
#endif

#endif //_INTERRUPTS_H_

