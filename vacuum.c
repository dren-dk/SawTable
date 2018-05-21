#include "vacuum.h"
#include "board.h"
#include "adchelper.h"

#define MAX_CURRENT_mA 8400
#define THRESHOLD_mW (100*1000)
#define VOLTAGE 230
#define THRESHOLD_mA (THRESHOLD_mW/VOLTAGE)
#define CURRENT_THRESHOLD_ADC (1023*THRESHOLD_mA/MAX_CURRENT_mA)

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
  if (state == VAC_OFF) {
    GPCLEAR(VAC_MOTOR);
    
  } else {    
    uint8_t switchToA = GPREAD(VALVE_A) && (state == VAC_MANUAL_ON_A || state == VAC_AUTO_ON_A);
    uint8_t switchToB = GPREAD(VALVE_B) && (state == VAC_MANUAL_ON_B || state == VAC_AUTO_ON_B);

    if (switchToA || switchToB) {
      GPCLEAR(VAC_MOTOR); // Don't need to have the vac running while switching.
      GPSET(VALVE_MOTOR); // Start switching the valve state.

      if (switchToA) {
	while (GPREAD(VALVE_A)) {}
	// TODO: Delay to hit the right top-point here, if needed.
      }
      if (switchToB) {
	while (GPREAD(VALVE_B)) {}
	// TODO: Delay to hit the right top-point here, if needed.
      }

      GPCLEAR(VALVE_MOTOR); // Done switching      
    }
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

void autoVac() {
  uint8_t onA = getADC(CURRENT_A_ADC) > CURRENT_THRESHOLD_ADC;
  uint8_t onB = getADC(CURRENT_B_ADC) > CURRENT_THRESHOLD_ADC;
  
  if (currentState == VAC_OFF) {
    if (onA) {
      setVacState(VAC_AUTO_ON_A);
    } else if (onB) {
      setVacState(VAC_AUTO_ON_B);
    }

  } else if (currentState == VAC_AUTO_ON_A) {
    if (!onA) {
      setVacState(VAC_OFF);
    }

  } else if (currentState == VAC_AUTO_ON_B) {
    if (!onB) {
      setVacState(VAC_OFF);
    }
  }  
}

