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


static RTCC_DATETIME g_DataTime;
static DisplayFrame_t g_ClockFrame;


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
    Screens__SetCurrentScreen(SCREEN__FLAME_CLOCK);
    Screens__DrawCurrentScreen(&g_ClockFrame, &g_DataTime);
}

void Clock_Task(void) {

    static uint8_t previousSecond = 0;

    RTCC_TimeGet(&g_DataTime);

    if (previousSecond != g_DataTime.second) {
        previousSecond = g_DataTime.second;
        Interrupt__ShowFrame(&g_ClockFrame);
        CheckButtons();
        Screens__DrawCurrentScreen(&g_ClockFrame, &g_DataTime);
    }
}

void CheckButtons(void) {

    if (!HAL_PIO__GetButtonState(BUTTON1)) {
        if (g_DataTime.hour < 23) {
            g_DataTime.hour++;
            RTCC_Initialize(&g_DataTime);
        }
    }
    if (!HAL_PIO__GetButtonState(BUTTON2)) {
        if (g_DataTime.hour > 0) {
            g_DataTime.hour--;
            RTCC_Initialize(&g_DataTime);
        }
    }
    if (!HAL_PIO__GetButtonState(BUTTON3)) {
        if (g_DataTime.minute < 59) {
            g_DataTime.minute++;
            RTCC_Initialize(&g_DataTime);
        }
    }
    if (!HAL_PIO__GetButtonState(BUTTON4)) {
        if (g_DataTime.minute > 0) {
            g_DataTime.minute--;
            RTCC_Initialize(&g_DataTime);
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

//******************************************************************************

//  end of file
//******************************************************************************

