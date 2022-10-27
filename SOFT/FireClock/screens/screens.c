#include <p24Fxxxx.h>
#include "screens.h"
#include "screen_flame_clock.h"
#include "screen_analog_clock.h"


typedef void (*CURRENT_SCREEN_DRAW)(DisplayFrame_t* displayFrame, RTCC_DATETIME* dataTime);

CURRENT_SCREEN_DRAW g_CurrentScreenDraw_CallBack;

void Screens__SetCurrentScreen(ScreenNames_t screenName) {

    switch (screenName) {
        case SCREEN__FLAME_CLOCK_ONE:
            g_CurrentScreenDraw_CallBack = ScreenDraw__FlameClockOne;
            break;
        case SCREEN__ANALOG_CLOCK_ONE:
            ScreenInit__AnalogClockOne();
            g_CurrentScreenDraw_CallBack = ScreenDraw__AnalogClockOne;
            break;
        default:
            break;
    }

}

void Screens__DrawCurrentScreen(DisplayFrame_t* displayFrame, RTCC_DATETIME* dataTime) {

    if (g_CurrentScreenDraw_CallBack != 0) {
        (*g_CurrentScreenDraw_CallBack)(displayFrame, dataTime);
    }
}



