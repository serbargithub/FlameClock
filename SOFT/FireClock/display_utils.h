#ifndef _DISPLAY_UTILS_H_
#define _DISPLAY_UTILS_H_

#ifdef	__cplusplus
extern "C" {
#endif
    
#include <stdint.h>
#include <stdbool.h>
    
    extern const char *WeekDay[];
    extern const char *Month[];
    
    bool Display_PutSymbol(DisplayFrame_t* displayFrame, uint8_t screenX, uint8_t screenY, char symbol);
    bool Display_PutNextSymbol(DisplayFrame_t* displayFrame, char symbol);
    bool Display_Printf(DisplayFrame_t* displayFrame, uint8_t screenX, uint8_t screenY, char* strToPrint, ...);

#ifdef	__cplusplus
}
#endif

#endif //_DISPLAY_UTILS_H_

