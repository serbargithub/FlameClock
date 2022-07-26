#include <p24Fxxxx.h>
#include <string.h>
#include "interrupts.h"
#include "Peripferals/peripherals_HAL.h"

#define _ISR_PSV __attribute__((interrupt, auto_psv))
#define _ISR_NO_PSV __attribute__(interrupt, no_auto_psv))

static DisplayFrame_t g_DisplayFrame;
static unsigned char g_EndOfFrame;

//================================================

void _ISR_PSV _T1Interrupt(void) {

    
    static unsigned char countH, countV;
    for (countH = HORIZONTAL_BYTES_MAX ; countH > 0; countH--) {
        HAL_SPI__SendByte(g_DisplayFrame.data [countV][countH - 1]);
    }
    unsigned char decHigh = countV/10;
    unsigned char decLow = countV - decHigh*10;
    unsigned char sendDec = decHigh<<4 +decLow;
    HAL_SPI__SendByte(sendDec);
    HAL_PIO__DisplayLatch(PIN_ON);
    HAL_PIO__DisplayLatch(PIN_OFF);
    countV++;
    if (countV >= VERTICAL_LINES_MAX) {
        countV = 0;
        g_EndOfFrame = 1;
    }

    _T1IF = 0;
} //T1Interrupt
//-----------------------------------------

void _ISR_PSV _T2Interrupt(void) //4000 Ãö
{
    //OS_EnterInt();
    //OS_Timer();
    //OS_LeaveInt();
    _T2IF = 0;
} //T2Interrupt

static char UART1_RX_Data;

void _ISR_PSV _U1RXInterrupt(void) {
    UART1_RX_Data = U1RXREG;
    _U1RXIF = 0;
}
//--

/*
void _ISR _U2RXInterrupt(void) {
    static unsigned char tempRX;
    tempRX = U2RXREG;
    _U2RXIF = 0;
}
//--

void _ISR _U3RXInterrupt(void) {
    static unsigned char tempRX;
    tempRX = U3RXREG;
    _U3RXIF = 0;
}
//--

void _ISR _U4RXInterrupt(void) {
    static unsigned char tempRX;
    tempRX = U4RXREG;
    _U4RXIF = 0;
}
 */

void Interrupt__Setup(void) {

    _T1IP = 4; // this is the default value anyway
    _T2IP = 4; // this is the default value anyway
    _T3IP = 4; // this is the default value anyway
    _U1RXIP = 4; // this is the default value anyway
    _U2RXIP = 4; // this is the default value anyway
    _U3RXIP = 4; // this is the default value anyway
    _U4RXIP = 4; // this is the default value anyway

    TMR1 = 0; // clear the timer
    TMR2 = 0; // clear the timer
    PR1 = 1000 - 1;//3200 - 1; // set the period register 2500 Hz 
    PR2 = 8000 - 1; // set the period register 1 kHz
    T1CON = 0x8000; // enabled, prescaler 1:1, internal clock  
    T2CON = 0x8000; // enabled, prescaler 1:1, internal clock   system tick RTOS
    _T1IF = 0;
    _T2IF = 0;
    _T1IE = 1; //enable interrupt TMR1
    _T2IE = 1; //enable interrupt TMR2

    _U1RXIF = 0;
    _U1RXIE = 1;

    // 2.3 init the processor priority level
    _IPL = 0; // this is the default value anyway
}

void Interrupt__ShowFrame(DisplayFrame_t* displayFrame) {
    memcpy(&g_DisplayFrame, displayFrame, sizeof (DisplayFrame_t));
}

unsigned char Interrupt__IsFrameEnd() {
    if (g_EndOfFrame > 0) {
        g_EndOfFrame = 0;
        return 1;
    } else {
        return 0;
    }
}

char Interrupt__GetUART1RX() {
    char dataRead = UART1_RX_Data;
    UART1_RX_Data = 0;
    return dataRead;
}