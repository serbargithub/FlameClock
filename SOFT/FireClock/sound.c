#include <p24Fxxxx.h>
#include "interrupts.h"

void Sound__KeyBeep() {
    Interrupt__PlaySound(1000, 100);
}

