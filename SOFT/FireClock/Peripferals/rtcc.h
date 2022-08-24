/*******************************************************************************
Copyright 2016 Microchip Technology Inc. (www.microchip.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*******************************************************************************/

#include <stdint.h>
#include <stdbool.h>

#ifndef _RTCC_H
#define _RTCC_H

typedef struct
{
    bool bcdFormat;
    uint8_t year;
    uint8_t month;
    uint8_t day;
    uint8_t weekday;
    uint8_t hour;
    uint8_t minute;
    uint8_t second;
} RTCC_DATETIME;

void RTCC_Start();
void RTCC_Initialize (RTCC_DATETIME * value);
void RTCC_TimeGet (RTCC_DATETIME * value);
void RTCC_BuildTimeGet( RTCC_DATETIME *dateTime);

#endif // _RTCC_H
