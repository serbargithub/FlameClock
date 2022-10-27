#include <p24Fxxxx.h>
#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include "delays.h"
#include "definitions.h"
#include "interrupts.h"
#include "Peripferals/peripherals_HAL.h"
#include "Peripferals/uart_HAL.h"
#include "Peripferals/rtcc.h"
#include "screens/screens.h"

#define SCREEN_NUMBER_MAX 2

static RTCC_DATETIME g_DataTime;
static DisplayFrame_t g_ClockFrame;
static uint16_t g_CurrentScreenNumber = 0;
static AdjustingMode_t g_AdjustMode;
static uint16_t g_TimerAdjustMode;


void AdjustParametr(AdjustingMode_t g_AdjustMode, int16_t direction);
void HandleAjustTimer();
void CheckButtons(void);
bool IsCurrentTimeValid(void);

//****************************************************************************

void Clock_Init(void) {

    RTCC_Start();
    RTCC_TimeGet(&g_DataTime);

    if (IsCurrentTimeValid() == false) {
        RTCC_BuildTimeGet(&g_DataTime);
        RTCC_Initialize(&g_DataTime);
    }
    g_AdjustMode = AJUST_MODE__OFF;
    g_TimerAdjustMode = 0;
    g_CurrentScreenNumber = 0;
    Screens__SetCurrentScreen(SCREEN__FLAME_CLOCK_ONE);
    //Screens__SetCurrentScreen(SCREEN__ANALOG_CLOCK_ONE);
    Screens__DrawCurrentScreen(&g_ClockFrame, &g_DataTime, g_AdjustMode);
}

void Clock_Task(void) {

    static uint8_t previousSecond = 0;

    RTCC_TimeGet(&g_DataTime);

    if (previousSecond != g_DataTime.second) {
        previousSecond = g_DataTime.second;
        Interrupt__ShowFrame(&g_ClockFrame);
        HandleAjustTimer();
        CheckButtons();
        Screens__DrawCurrentScreen(&g_ClockFrame, &g_DataTime, g_AdjustMode);
    }
}

void SetNextScreen(void) {

    g_CurrentScreenNumber++;
    if (g_CurrentScreenNumber >= SCREEN_NUMBER_MAX) {
        g_CurrentScreenNumber = 0;
    }
    switch (g_CurrentScreenNumber) {
        case 0:
            Screens__SetCurrentScreen(SCREEN__FLAME_CLOCK_ONE);
            break;
        case 1:
            Screens__SetCurrentScreen(SCREEN__ANALOG_CLOCK_ONE);
            break;
        default:
            break;
    }
}

void HandleAjustTimer() {

    if (g_TimerAdjustMode > 0) {
        g_TimerAdjustMode--;
    } else {
        g_AdjustMode = AJUST_MODE__OFF;
    }
}

void CheckButtons(void) {

    if (!HAL_PIO__GetButtonState(BUTTON1)) {
        SetNextScreen();
    }
    if (!HAL_PIO__GetButtonState(BUTTON2)) {
        g_TimerAdjustMode = 10;
        g_AdjustMode++;
        if (g_AdjustMode >= AJUST_MODE__THE_LAST) {
            g_AdjustMode = AJUST_MODE__OFF;
        }
    }
    if (g_AdjustMode > AJUST_MODE__OFF) {
        if (!HAL_PIO__GetButtonState(BUTTON3)) {
            g_TimerAdjustMode = 10;
            AdjustParametr(g_AdjustMode, 1);
        }
        if (!HAL_PIO__GetButtonState(BUTTON4)) {
            g_TimerAdjustMode = 10;
            AdjustParametr(g_AdjustMode, -1);
        }
    }
}

bool IsCurrentTimeValid(void) {

    RTCC_DATETIME buildTime;
    RTCC_BuildTimeGet(&buildTime);

    if ((g_DataTime.year < buildTime.year) || (g_DataTime.year > 99)) {
        return false;
    }
    if ((g_DataTime.year == buildTime.year) &&
            (g_DataTime.month < buildTime.month)) {
        return false;
    }
    if ((g_DataTime.year == buildTime.year) &&
            (g_DataTime.month == buildTime.month) &&
            (g_DataTime.day < buildTime.day)) {
        return false;
    }
    if ((g_DataTime.year == buildTime.year) &&
            (g_DataTime.month == buildTime.month) &&
            (g_DataTime.day == buildTime.day) &&
            (g_DataTime.hour < buildTime.hour)) {
        return false;
    }
    if ((g_DataTime.year == buildTime.year) &&
            (g_DataTime.month == buildTime.month) &&
            (g_DataTime.day == buildTime.day) &&
            (g_DataTime.hour == buildTime.hour) &&
            (g_DataTime.minute < buildTime.minute)) {
        return false;
    }
    return true;
}

void AdjustParametr(AdjustingMode_t g_AdjustMode, int16_t direction) {

    switch (g_AdjustMode) {
        case AJUST_MODE__HOURS:
            if (direction == 1) {
                if (g_DataTime.hour < 23) {
                    g_DataTime.hour++;
                    RTCC_Initialize(&g_DataTime);
                } else {
                    g_DataTime.hour = 0;
                }
            } else {
                if (g_DataTime.hour > 0) {
                    g_DataTime.hour--;
                    RTCC_Initialize(&g_DataTime);
                } else {
                    g_DataTime.hour = 23;
                }
            }
            break;
        case AJUST_MODE__MINUTES:
            if (direction == 1) {
                if (g_DataTime.minute < 59) {
                    g_DataTime.minute++;
                    RTCC_Initialize(&g_DataTime);
                } else {
                    g_DataTime.minute = 0;
                }
                
            } else {
                if (g_DataTime.minute > 0) {
                    g_DataTime.minute--;
                    RTCC_Initialize(&g_DataTime);
                } else {
                    g_DataTime.minute = 59;
                }
            }
            break;
        case AJUST_MODE__SECONDS:
            g_DataTime.second = 0;
            RTCC_Initialize(&g_DataTime);
            break;
        case AJUST_MODE__WEEKS:
            if (direction == 1) {
                if (g_DataTime.weekday < 7) {
                    g_DataTime.weekday++;
                    RTCC_Initialize(&g_DataTime);
                } else {
                    g_DataTime.weekday = 1;
                }
            } else {
                if (g_DataTime.weekday > 1) {
                    g_DataTime.weekday--;
                    RTCC_Initialize(&g_DataTime);
                } else {
                    g_DataTime.weekday = 7;
                }
            }
            break;
        case AJUST_MODE__DAYS:
            if (direction == 1) {
                if (g_DataTime.day < 31) {
                    g_DataTime.day++;
                    RTCC_Initialize(&g_DataTime);
                } else {
                    g_DataTime.day = 1;
                }
            } else {
                if (g_DataTime.day > 1) {
                    g_DataTime.day--;
                    RTCC_Initialize(&g_DataTime);
                } else {
                    g_DataTime.day = 31;
                }
            }
            break;
        case AJUST_MODE__MONTHS:
            if (direction == 1) {
                if (g_DataTime.month < 12) {
                    g_DataTime.month++;
                    RTCC_Initialize(&g_DataTime);
                } else {
                    g_DataTime.month = 1;
                }
            } else {
                if (g_DataTime.month > 1) {
                    g_DataTime.month--;
                    RTCC_Initialize(&g_DataTime);
                } else {
                    g_DataTime.month = 12;
                }
            }
            break;
        case AJUST_MODE__YEARS:
            if (direction == 1) {
                if (g_DataTime.year < 2100) {
                    g_DataTime.year++;
                    RTCC_Initialize(&g_DataTime);
                }
            } else {
                if (g_DataTime.year > 2022) {
                    g_DataTime.year--;
                    RTCC_Initialize(&g_DataTime);
                }
            }
            break;
        default:
            break;
    }
}

//******************************************************************************

//  end of file
//******************************************************************************

