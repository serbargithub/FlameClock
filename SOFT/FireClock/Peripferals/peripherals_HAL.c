#include <p24Fxxxx.h>
#include <stdint.h>
#include <stdbool.h>
#include "peripherals_HAL.h"
#include "io_ports_names.h"
#include "peripherals_map.h"

void HAL_PIO__InitIO_Ports(void) {
    PORTB = 0;
    PORTD = 0;
    PORTE = 0;
    PORTG = 0;
    PORTF = 0;

    TRISB = MASK_PORTB;
    TRISC = MASK_PORTC;
    TRISD = MASK_PORTD;
    TRISE = MASK_PORTE;
    TRISG = MASK_PORTG;
    TRISF = MASK_PORTF;

}

void HAL_PIO__SetInformLed(PinValue_t value) {
    INFORM_LED_OUT = value;
}

void HAL_PIO__SetBuzzerOut(PinValue_t value) {
    BUZZER_OUT = value;
}

void HAL_PIO__BuckUp1Out(PinValue_t value) {
    BUCK_UP1_OUT = value;
}

void HAL_PIO__BuckUp2Out(PinValue_t value) {
    BUCK_UP2_OUT = value;
}

void HAL_PIO__DisplayLatch(PinValue_t value) {
    DISPLAY_LATCH = value;
}

bool HAL_PIO__GetButtonState(ButtonsName_t button) {
    
    switch (button) {
        case BUTTON1:
            return BUTTON1_IN;
        case BUTTON2:
            return BUTTON2_IN;
        case BUTTON3:
            return BUTTON3_IN;
        case BUTTON4:
            return BUTTON4_IN;
        default:
            return false;
    }
}
bool HAL_PIO__GetPowerState() {
    return POWER_SENSOR_IN;
}

void HAL_ADC__InitADC(void) {
    AD1PCFG = 0xFFFF;
    AD1CSSL = 0;
    AD1CON3 = 0x0101;
    AD1CON2 = 0x0000;
    AD1CON1 = 0x0000; // turn off the ADC

}

void HAL_MAP__GeneralPeripheralsMapping(void) {
    PeripheralsMap__GeneralMapping();
}
