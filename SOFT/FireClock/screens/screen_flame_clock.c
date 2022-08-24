#include <p24Fxxxx.h>
#include <string.h>
#include "screen_flame_clock.h"
#include "../display_utils.h"
#include "../fonts/fonts.h"


void ScreenDraw__FlameClockOne(DisplayFrame_t* displayFrame, RTCC_DATETIME* dataTime) {

    memset(displayFrame->data, 0xFF, sizeof (DisplayFrame_t));
    Font_SetCurrentFont(FONT_ANTONIO_REGULAR_SIZE16);
    Display_Printf(displayFrame, 15, 5, "Flame clock");
    Font_SetCurrentFont(FONT_M12_SIZE20);
    Display_Printf(displayFrame, 10, 35, "%02i.%02i", dataTime->hour, dataTime->minute);
    Font_SetCurrentFont(FONT_M12_SIZE16);
    Display_Printf(displayFrame, 65, 64, "%02i", dataTime->second);
    Font_SetCurrentFont(FONT_BEBAS_BOLD_SIZE16);
    Display_Printf(displayFrame, 5, 83, "%s, %02i  %s  20%02i", WeekDay[dataTime->weekday], dataTime->day, Month[dataTime->month], dataTime->year);
}

