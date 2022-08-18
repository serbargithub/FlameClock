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
#include "screen.h"


// PIC24FJ128GA106
// 16 mHz Main frequency
//_CONFIG2(IESO_ON&FNOSC_PRI&POSCMOD_HS&FCKSM_CSDCMD&OSCIOFNC_OFF&IOL1WAY_OFF);
//_CONFIG1(JTAGEN_OFF&GCP_OFF&GWRP_OFF&BKBUG_OFF&COE_OFF&ICS_PGx1&FWDTEN_OFF&WINDIS_OFF&FWPSA_PR32&WDTPS_PS256);

// CONFIG2
#pragma config POSCMOD = HS 
#pragma config OSCIOFNC = OFF 
#pragma config FCKSM = CSDCMD
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

void SendLine(unsigned char countV);
//****************************************************************************

int main(void) {
    HAL_PIO__InitIO_Ports();
    HAL_ADC__InitADC();
    HAL_MAP__GeneralPeripheralsMapping();
    HAL_UART__SetExternGetch(Interrupt__GetUART1RX);
    HAL_UART__SerialSetup(UART_SPEED_115200, UART_CH1);
    HAL_SPI__Init();
    Interrupt__Setup();
    DelayMs(500);
    HAL_PIO__BuckUp1Out(PIN_ON);
    DelayMs(500);
    HAL_PIO__BuckUp2Out(PIN_ON);

    Font_SetCurrentFont(FONT_BEBAS_SIZE30);
    memcpy(g_PreparedFrame.data, HelloWorld, sizeof(HelloWorld));
    Interrupt__ShowFrame(&g_PreparedFrame);
    printf("\r\nStart.");
    HAL_UART__CheckAndResetErrors(UART_CH1);

    uint8_t line = 0;
    //SendLine(line);
    while (1) {
        HAL_PIO__SetInformLed(PIN_ON);
        DelayMs(500);
        HAL_PIO__SetInformLed(PIN_OFF);
        DelayMs(500);

        char rByte = getch();
        if (rByte == '0') {
            line = 0;
            memcpy(g_PreparedFrame.data, BlankScreen1, sizeof(BlankScreen1));
            Interrupt__ShowFrame(&g_PreparedFrame);
        }
        if (rByte == '1') {
            line = 1;
            memcpy(g_PreparedFrame.data, BlankScreen2, sizeof(BlankScreen2));

            Screen_PutFirstSymbol(&g_PreparedFrame, 5, 30, 'S');
            
            Interrupt__ShowFrame(&g_PreparedFrame);
        }
        if (rByte == '2') {
            line = 2;
            memcpy(g_PreparedFrame.data, HelloWorld, sizeof(HelloWorld));
            Interrupt__ShowFrame(&g_PreparedFrame);
        }
        if (rByte == '3') {
            line = 3;
            memcpy(g_PreparedFrame.data, Pepsi, sizeof(Pepsi));
            while (Interrupt__IsFrameEnd() == 0) {
            };
            Interrupt__ShowFrame(&g_PreparedFrame);
        }
        
        if (rByte == '4') {
            line = 4;
            memcpy(g_PreparedFrame.data, ArtsStrade, sizeof(ArtsStrade));
            Interrupt__ShowFrame(&g_PreparedFrame);
        }
        if (rByte == '5') {
            line = 5;
            memcpy(g_PreparedFrame.data, Triden, sizeof(Triden));
            Interrupt__ShowFrame(&g_PreparedFrame);
        }
        if (rByte == '6') {
            line = 6;
            memcpy(g_PreparedFrame.data, FlameAnimation, sizeof(FlameAnimation) / 5);
            Interrupt__ShowFrame(&g_PreparedFrame);
        }
        printf("\r\nLine: %i", line);
    }
}



const uint8_t line1[13] = {0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55};
const uint8_t line2[13] = {0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa};

void SendLine(uint8_t countV) {

    uint8_t countH;
    for (countH = 0; countH < HORIZONTAL_BYTES_MAX; countH++) {
        if (countV & 0x01) {
            HAL_SPI__SendByte(line1[countH]);
        } else {
            HAL_SPI__SendByte(line2[countH]);
        }
    }
    HAL_SPI__SendByte(countV);
    HAL_PIO__DisplayLatch(PIN_ON);
    HAL_PIO__DisplayLatch(PIN_OFF);

}


//******************************************************************************

//  end of file
//******************************************************************************

