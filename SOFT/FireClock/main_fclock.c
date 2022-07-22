#include <p24Fxxxx.h>
#include <stdio.h>
#include <string.h>
#include "delays.h"
#include "definitions.h"
#include "Peripferals/peripherals_HAL.h"
#include "Peripferals/uart_HAL.h"
#include "Peripferals/spi_HAL.h"
#include "interrupts.h"
#include "screens_static.h"


// PIC24FJ128GA106
// 16 mHz Main frequency
_CONFIG2 (IESO_ON&FNOSC_PRI&POSCMOD_HS&FCKSM_CSDCMD&OSCIOFNC_OFF&IOL1WAY_OFF);
_CONFIG1 (JTAGEN_OFF&GCP_OFF&GWRP_OFF&BKBUG_OFF&COE_OFF&ICS_PGx1&FWDTEN_OFF&WINDIS_OFF&FWPSA_PR32&WDTPS_PS256);

static DisplayFrame_t g_PreparedFrame;
//****************************************************************************
int main (void)
{
    HAL_PIO__InitIO_Ports();
    HAL_ADC__InitADC();
	HAL_MAP__GeneralPeripheralsMapping();
    HAL_UART__SerialSetup(UART_SPEED_115200, UART_CH1);
    HAL_SPI__Init();
    Interrupt__Setup();
    DelayMs(500);
    HAL_PIO__BuckUp1Out(PIN_ON);
    DelayMs(500);
    HAL_PIO__BuckUp2Out(PIN_ON);
    
    memcpy(g_PreparedFrame.data, DemoScreen1, HORIZONTAL_BYTES_MAX);
    while(Interrupt__IsFrameEnd() == 0){};
    Interrupt__ShowFrame(&g_PreparedFrame);
    
    while(1){
        HAL_PIO__SetInformLed(PIN_ON);
        DelayMs(500);
        HAL_PIO__SetInformLed(PIN_OFF);
        DelayMs(500);
    }
}


//******************************************************************************

//  end of file
//******************************************************************************

