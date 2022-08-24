#include <p24Fxxxx.h>
#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include "delays.h"
#include "definitions.h"
#include "Peripferals/peripherals_HAL.h"
#include "Peripferals/uart_HAL.h"
#include "interrupts.h"
#include "fonts/fonts.h"
#include "Peripferals/rtcc.h"
#include "display_utils.h"


static RTCC_DATETIME g_DataTime;
static DisplayFrame_t g_ClockFrame;

const char *WeekDay[] = {"", "Mon", "Tue", "Wen", "Thu", "Fri", "Sat", "Sun"};
const char *Month[] = {"", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};

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
    memset(&g_ClockFrame, 0xFF, sizeof(g_ClockFrame));
}

void Clock_Task(void) {

    static uint8_t previousSecond = 0;

    RTCC_TimeGet(&g_DataTime);

    if (previousSecond != g_DataTime.second) {
        previousSecond = g_DataTime.second;
        Interrupt__ShowFrame(&g_ClockFrame);
        
        CheckButtons();
        memset(g_ClockFrame.data, 0xFF, sizeof (g_ClockFrame));
        Font_SetCurrentFont(FONT_ANTONIO_REGULAR_SIZE16);
        Display_Printf(&g_ClockFrame, 15, 5, "Flame clock");
        Font_SetCurrentFont(FONT_M12_SIZE20);
        Display_Printf(&g_ClockFrame, 10, 35, "%02i.%02i", g_DataTime.hour, g_DataTime.minute);
        Font_SetCurrentFont(FONT_M12_SIZE16);
        Display_Printf(&g_ClockFrame, 65, 64, "%02i", g_DataTime.second);
        Font_SetCurrentFont(FONT_BEBAS_BOLD_SIZE16);
        Display_Printf(&g_ClockFrame, 5, 83, "%s, %02i  %s  20%02i", WeekDay[g_DataTime.weekday], g_DataTime.day, Month[g_DataTime.month], g_DataTime.year );
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

