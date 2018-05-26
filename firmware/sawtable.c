#include <avr/wdt.h> 
#include <stdio.h>

#include "board.h"

#include "buttons.h"
#include "vacuum.h"
#include "legs.h"
#include "leds.h"
#include "uart.h"

int main(void) {
  wdt_enable(WDTO_4S);
  ledInit();
  ledBooting();
  uartInit();
  L("Booting SawTable 1.0");
  
  vacInit();
  buttonInit();
  initLegs();
  
  Button lastButton = BTN_NONE;
  ledBooted();

  while (1) {
    wdt_reset();

    setGreenLed(GPREAD(VALVE_A));
    setYellowLed(GPREAD(VALVE_B));

    
    Button button = readButtons();
    
    if (lastButton != button) {
      P("Current button: %d\n", button);
      
      if (button == BTN_S) {
	L("toggle manual B");
	toggleVacManual(VAC_MANUAL_ON_B);

      } else if (button == BTN_3) {
	L("toggle manual A");
	toggleVacManual(VAC_MANUAL_ON_A);
      }
      
      lastButton = button;
    }

    autoVac();    
  }
}


