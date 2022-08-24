#include <p24Fxxxx.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include "delays.h"
#include "definitions.h"
#include "Peripferals/peripherals_HAL.h"
#include "Peripferals/uart_HAL.h"
#include "Peripferals/spi_HAL.h"
#include "interrupts.h"
#include "images/screens_static.h"
#include "fonts/fonts.h"
#include "display_utils.h"
#include "debugging.h"
#include "clock_task.h"


// PIC24FJ128GA106
// 16 mHz Main frequency
//_CONFIG2(IESO_ON&FNOSC_PRI&POSCMOD_HS&FCKSM_CSDCMD&OSCIOFNC_OFF&IOL1WAY_OFF);
//_CONFIG1(JTAGEN_OFF&GCP_OFF&GWRP_OFF&BKBUG_OFF&COE_OFF&ICS_PGx1&FWDTEN_OFF&WINDIS_OFF&FWPSA_PR32&WDTPS_PS256);

// CONFIG2
#pragma config POSCMOD = HS 
#pragma config OSCIOFNC = OFF 
#pragma config FCKSM = CSECMD
#pragma config FNOSC = PRI
#pragma config IESO = ON 
// CONFIG1
#pragma config WDTPS = PS256 
#pragma config FWPSA = PR32
#pragma config WINDIS = OFF 
#pragma config FWDTEN = OFF
#pragma config ICS = PGx1 
#pragma config GWRP = OFF 
#pragma config GCP = OFF 
#pragma config JTAGEN = OFF 

static DisplayFrame_t g_PreparedFrame;

void PowerSavingMode();

//****************************************************************************

int main(void) {
    HAL_ConrolReg__HighPerfomance();
    HAL_PIO__Init_IOPorts();
    HAL_ADC__InitADC();
    HAL_MAP__GeneralPeripheralsMapping();
    HAL_UART__SetExternGetch(Interrupt__GetUART1RX);
    HAL_UART__SerialSetup(UART_SPEED_115200, UART_CH1);
    HAL_SPI__Init();
    Interrupt__Setup();
    Clock_Init();
    DelayMs(200);
    HAL_PIO__BuckUp1Out(PIN_ON);
    DelayMs(200);
    HAL_PIO__BuckUp2Out(PIN_ON);

    memcpy(g_PreparedFrame.data, ArtsStrade, sizeof (ArtsStrade));
    Interrupt__ShowFrame(&g_PreparedFrame);
    printf("\r\nStart.");
    HAL_UART__CheckAndResetErrors(UART_CH1);
    DelayMs(1000);

    while (1) {
        DelayMs(20);
        if (HAL_ADC__GetPowerState() == 0) {
            PowerSavingMode();
            return; //full reset
        } else {
            Clock_Task();
        }
    }
}

void PowerSavingMode() {
    
    printf("\r\nEnter Power save mode.");
    Interrupt__DisableAll();
    HAL_UART__TurnOff(UART_CH1);
    HAL_SPI__TurnOff();
    HAL_PIO__TurnOff_IOPorts();
    HAL_ConrolReg__LowPerfomance();

    while (HAL_ADC__GetPowerState() == 0) {
        DelayMs(2);
    }
    DelayMs(2);
    /*
    HAL_ConrolReg__HighPerfomance();
    HAL_PIO__Init_IOPorts();
    HAL_ADC__InitADC();
    HAL_MAP__GeneralPeripheralsMapping();
    HAL_UART__SetExternGetch(Interrupt__GetUART1RX);
    HAL_UART__SerialSetup(UART_SPEED_115200, UART_CH1);
    HAL_SPI__Init();
    Interrupt__Setup();
    Clock_Init();
    DelayMs(200);
    HAL_PIO__BuckUp1Out(PIN_ON);
    DelayMs(200);
    HAL_PIO__BuckUp2Out(PIN_ON);
    HAL_UART__CheckAndResetErrors(UART_CH1);
    printf("\r\nFull power mode.");
   */
}


//******************************************************************************

//  end of file
//******************************************************************************

