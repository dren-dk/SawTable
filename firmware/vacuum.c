#include <util/delay.h>

#include "vacuum.h"
#include "board.h"
#include "adchelper.h"
#include "uart.h"

#define MAX_CURRENT_mA 8400
#define THRESHOLD_mW (100*1000L)
#define VOLTAGE 230
#define THRESHOLD_mA (THRESHOLD_mW/VOLTAGE)
#define CURRENT_THRESHOLD_ADC (1023*THRESHOLD_mA/MAX_CURRENT_mA)

#define OVERRUN 25


void vacInit() {
  GPINPUT(VALVE_A);      GPSET(VALVE_A);
  GPINPUT(VALVE_B);      GPSET(VALVE_B);
  GPOUTPUT(VALVE_MOTOR); GPCLEAR(VALVE_MOTOR);
  GPOUTPUT(VAC_MOTOR);   GPCLEAR(VAC_MOTOR);

  GPINPUT(CURRENT_B);
  GPINPUT(CURRENT_A);

  initADC();  
}

VacuumState currentState = VAC_OFF;

VacuumState getVacState() {
  return currentState;
}

void setVacState(VacuumState state) {
  P("Setting vac state %d\n", state);
  
  if (state == VAC_OFF) {
    L("Stopped vac");
    GPCLEAR(VAC_MOTOR);
    
  } else {    
    uint8_t switchToA = GPREAD(VALVE_A) && (state == VAC_MANUAL_ON_A || state == VAC_AUTO_ON_A);
    uint8_t switchToB = GPREAD(VALVE_B) && (state == VAC_MANUAL_ON_B || state == VAC_AUTO_ON_B);

    if (switchToA || switchToB) {
      GPCLEAR(VAC_MOTOR); // Don't need to have the vac running while switching.
      GPSET(VALVE_MOTOR); // Start switching the valve state.

      if (switchToA) {
	L("Switching valve to A");
	uint8_t sure = OVERRUN;
	while (sure) {
	  if (GPREAD(VALVE_A)) {
	    sure = OVERRUN;
	  } else {
	    sure--;
	    _delay_ms(1);
	  }
	}
	
	//while (GPREAD(VALVE_A)) {
	//  _delay_ms(1);
	//}
	// TODO: Delay to hit the right top-point here, if needed.
      }
      if (switchToB) {
	L("Switching valve to B");
	//	while (GPREAD(VALVE_B)) {
	//  _delay_ms(1);
	//}

	uint8_t sure = OVERRUN;
	while (sure) {
	  if (GPREAD(VALVE_B)) {
	    sure = OVERRUN;
	  } else {
	    sure--;
	    _delay_ms(1);
	  }
	}

	
	// TODO: Delay to hit the right top-point here, if needed.
      }

      _delay_ms(100);
      
      L("Done switching valve");
      GPCLEAR(VALVE_MOTOR); // Done switching      
    }
    L("Starting vac");
    GPSET(VAC_MOTOR); // Always end up with the shopvac running.
  }

  currentState = state;
}

void toggleVacManual(VacuumState state) {
  if (currentState != state) {
      setVacState(state);
  } else {
      setVacState(VAC_OFF);
  }
}

uint16_t verboseCount = 0;

void autoVac() {
  uint16_t currentA = getADC(CURRENT_A_ADC);
  uint16_t currentB = getADC(CURRENT_B_ADC);

  if (verboseCount++ > 5000) {
    verboseCount = 0;
    if (currentA || currentB) {
      P("Current A = %d Current B = %d (threshold = %d)\n", currentA, currentB, CURRENT_THRESHOLD_ADC);
    }
  }
   
  if (currentState == VAC_OFF) {
    uint8_t onA = currentA > CURRENT_THRESHOLD_ADC*2;
    uint8_t onB = currentB > CURRENT_THRESHOLD_ADC*2;
    if (onA) {
      setVacState(VAC_AUTO_ON_A);
    } else if (onB) {
      setVacState(VAC_AUTO_ON_B);
    }

  } else {
    uint8_t offA = currentA < CURRENT_THRESHOLD_ADC;
    uint8_t offB = currentB < CURRENT_THRESHOLD_ADC;

    if (currentState == VAC_AUTO_ON_A) {
      if (offA) {
	setVacState(VAC_OFF);
      }

    } else if (currentState == VAC_AUTO_ON_B) {
      if (offB) {
	setVacState(VAC_OFF);
      }
    }
  }
}

