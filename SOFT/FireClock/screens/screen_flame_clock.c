#include <p24Fxxxx.h>
#include <string.h>
#include "screen_flame_clock.h"
#include "../display_utils.h"
#include "../fonts/fonts.h"

void AdjustFlameClockOne(DisplayFrame_t* displayFrame, RTCC_DATETIME* dataTime, AdjustingMode_t adjustMode);

void ScreenDraw__FlameClockOne(DisplayFrame_t* displayFrame, RTCC_DATETIME* dataTime, AdjustingMode_t adjustMode) {

    static int16_t internalTimer;
    memset(displayFrame->data, 0xFF, sizeof (DisplayFrame_t));
    internalTimer++;
    if ((internalTimer & 0x0001)&& (adjustMode > AJUST_MODE__OFF)) {
        AdjustFlameClockOne(displayFrame, dataTime, adjustMode);
    } else {
        Font_SetCurrentFont(FONT_ANTONIO_REGULAR_SIZE16);
        Display_Printf(displayFrame, 15, 5, "Flame clock");
    }
    Font_SetCurrentFont(FONT_M12_SIZE20);
    Display_Printf(displayFrame, 10, 35, "%02i.%02i", dataTime->hour, dataTime->minute);
    Font_SetCurrentFont(FONT_M12_SIZE16);
    Display_Printf(displayFrame, 65, 64, "%02i", dataTime->second);
    Font_SetCurrentFont(FONT_BEBAS_BOLD_SIZE16);
    Display_Printf(displayFrame, 5, 83, "%s, %02i  %s  20%02i", WeekDay[dataTime->weekday], dataTime->day, Month[dataTime->month], dataTime->year);
}

void AdjustFlameClockOne(DisplayFrame_t* displayFrame, RTCC_DATETIME* dataTime, AdjustingMode_t adjustMode) {

    Font_SetCurrentFont(FONT_ANTONIO_REGULAR_SIZE16);

    switch (adjustMode) {
        case AJUST_MODE__HOURS:
            Display_Printf(displayFrame, 15, 5, "Adjust Hours!");
            break;
        case AJUST_MODE__MINUTES:
            Display_Printf(displayFrame, 15, 5, "Adjust Minutes!");
            break;
        case AJUST_MODE__SECONDS:
            Display_Printf(displayFrame, 15, 5, "Adjust Seconds!");
            break;
        case AJUST_MODE__WEEKS:
            Display_Printf(displayFrame, 15, 5, "Adjust Weeks!");
            break;
        case AJUST_MODE__DAYS:
            Display_Printf(displayFrame, 15, 5, "Adjust Days!");
            break;
        case AJUST_MODE__MONTHS:
            Display_Printf(displayFrame, 15, 5, "Adjust Months!");
            break;
        case AJUST_MODE__YEARS:
            Display_Printf(displayFrame, 15, 5, "Adjust Years!");
            break;
        default:
            Display_Printf(displayFrame, 15, 5, "Adjust Finish!");
            break;
    }

}