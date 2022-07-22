#include <p24Fxxxx.h>

extern unsigned char cnt_wt;


//===============================

void DelayMks(unsigned int timeMks) {
    while (timeMks--) {
        asm("nop");
    }
}
//-----------------------

void DelayMs(unsigned int timeMs) {
    while (timeMs--) {
        DelayMks(1000);
    }
}
//----------------------

