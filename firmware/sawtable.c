#include <avr/wdt.h> 
#include <stdio.h>
#include <util/delay.h>

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

  const uint8_t BUTTON_STABILITY = 50; 
  Button lastButton = BTN_NONE;
  Button button = BTN_NONE;
  uint8_t stableButton = 0;
  ledBooted();

  while (1) {
    wdt_reset();

    Button rawButton = readButtons();
    if (rawButton == button) {
      if (stableButton < BUTTON_STABILITY) {
	stableButton++;
	_delay_ms(1);
      } else {

	if (lastButton != button) {
	  P("Current button: %d\n", button);
      
	  if (button == BTN_S) {
	    L("toggle manual B");
	    toggleVacManual(VAC_MANUAL_ON_B);

	  } else if (button == BTN_3) {
	    L("toggle manual A");
	    toggleVacManual(VAC_MANUAL_ON_A);

	  } else if (button == BTN_U) {
	    L("Retracting legs");
	    legRetract();
	  } else if (button == BTN_D) {
	    L("Deploying legs");
	    legDeploy();
	  } else if (button == BTN_1) {
	    L("Tilting towards B");
	    legPitch(0);
	  } else if (button == BTN_2) {
	    L("Tilting towards A");
	    legPitch(1);
	  } else if (button == BTN_NONE) {
	    L("Stopping legs");
	    legStop();
	  }
      
	  lastButton = button;
	}

      }
    } else {
      stableButton = 0;
      button = rawButton;
    }
    

    autoVac();    
  }
}


