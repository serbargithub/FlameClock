#include <p24Fxxxx.h>
#include <string.h>
#include "screen_analog_clock.h"
#include "../images/screens_static.h"
#include "../display_utils.h"
#include "../fonts/fonts.h"
#include "../graphics/draw.h"

// structure of drawing oblect : X position, Y position, color(0 or 1)
static const int arrow1[7][3] = {
    {0, 20, 0},
    {0, -33, 0},
    {0, 20, 0}, 
    {-1, 20, 1},
    {0, -33, 1},
    {1, 20, 1},
    {-1, 20, 1}
};
static const int arrow2[15][3] = {
    {0, -30, 0},
    {-2, 10, 0}, 
    {-1, 10, 0}, 
    {0, -30, 0},
    {0,  10, 0}, 
    {1, 10, 0}, 
    {0, -30, 0}, 
    {2, 10, 0}, 
    {-2, 10, 0}, 
    {-2, 10, 1},
    {-2, -5, 1},
    {0, -30, 1},
    {2, -5, 1},
    {2, 10, 1},
    {-2, 10, 1}
};
static const int arrow3[15][3] = {
    {0, -20, 0},
    {-2, 10, 0}, 
    {-1, 10, 0}, 
    {0, -20, 0}, 
    {0, 10, 0},
    {1, 10, 0}, 
    {0, -20, 0}, 
    {2, 10, 0},
    {-2, 10, 0},
    {-2, 10, 1},
    {-2, -5, 1},
    {0, -20, 1},
    {2, -5, 1},
    {2, 10, 1},
    {-2, 10, 1}
};

DrawObj_t ArrowSeconds;
DrawObj_t ArrowMinutes;
DrawObj_t ArrowHours;

void ScreenInit__AnalogClockOne() {

    ArrowSeconds.data = (int*) arrow1;
    ArrowSeconds.size = sizeof (arrow1) / sizeof (int);
    ArrowMinutes.data = (int*) arrow2;
    ArrowMinutes.size = sizeof (arrow2) / sizeof (int);
    ArrowHours.data = (int*) arrow3;
    ArrowHours.size = sizeof (arrow3) / sizeof (int);

}
int second;
int min;
int hour;

void ScreenDraw__AnalogClockOne(DisplayFrame_t* displayFrame, RTCC_DATETIME* dataTime, AdjustingMode_t adjustMode) {

    Display_SetImage(displayFrame, (const uint8_t*)AnalogClock, sizeof (AnalogClock));
    Draw__Object(displayFrame, ArrowHours, 51, 50, dataTime->hour * 30 + dataTime->minute/2 );
    Draw__Object(displayFrame, ArrowMinutes, 51, 50, dataTime->minute * 6);
    Draw__Object(displayFrame, ArrowSeconds, 51, 50, dataTime->second * 6);
}

