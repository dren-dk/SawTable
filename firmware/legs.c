#include <math.h>
#include <avr/interrupt.h>

#include "legs.h"
#include "board.h"
#include "uart.h"


#define MAX_DIFF 1

int16_t aPos;
int16_t bPos;

void initLegs(void) {
  aPos = bPos = 0;
  
  legStop();
  
  GPOUTPUT(LEG_A_DOWN);
  GPOUTPUT(LEG_A_UP);  
  GPOUTPUT(LEG_B_DOWN);
  GPOUTPUT(LEG_B_UP);   

  // Turn on the pullups for the reed switch inputs
  GPINPUT(LEG_A_SENSE);
  GPSET(LEG_A_SENSE);
  GPINPUT(LEG_B_SENSE);
  GPSET(LEG_B_SENSE);

  PCMSK0 |= _BV(LEG_A_PCINT) | _BV(LEG_B_PCINT);
  PCICR |= _BV(PCIE0);
  sei();
}

uint8_t lastAState;
uint8_t lastBState;
int16_t aPos;
int16_t bPos;
int8_t syncDirection;

ISR(PCINT0_vect) {
  uint8_t aState = GPREAD(LEG_A_SENSE);
  uint8_t bState = GPREAD(LEG_B_SENSE);

  if (!syncDirection) {
    return;
  }
  
  if (aState != lastAState) {
    if (aState) {
      aPos += syncDirection;
    }
    lastAState = aState;
  }
  
  if (bState != lastBState) {
    if (bState) {
      bPos += syncDirection;
    }
    lastBState = bState;
  }

  int16_t diff = aPos - bPos;
  P("legs @ %d - %d = %d\n", aPos, bPos, diff);

  if (syncDirection > 0) {

    if (diff >= -MAX_DIFF && diff <= MAX_DIFF) {
      GPSET(LEG_A_DOWN);
      GPSET(LEG_B_DOWN);

    } else if (diff > 2*MAX_DIFF) {
      GPCLEAR(LEG_A_DOWN);

    } else if (diff > 2*MAX_DIFF) {
      GPCLEAR(LEG_B_DOWN);
    }
    
  } else {
    if (diff >= -MAX_DIFF && diff <= MAX_DIFF) {
      GPSET(LEG_A_UP);
      GPSET(LEG_B_UP);

    } else if (diff < -2*MAX_DIFF) {
      GPCLEAR(LEG_A_UP);

    } else if (diff > 2*MAX_DIFF) {
      GPCLEAR(LEG_B_UP);

    }
  }
}

void legRetract(void) {
  legStop();
  syncDirection = -1;
  
  GPSET(LEG_A_UP);
  GPSET(LEG_B_UP);
}

void legDeploy(void) {
  legStop();
  syncDirection = 1;
 
  GPSET(LEG_A_DOWN);
  GPSET(LEG_B_DOWN);
}

void legPitch(uint8_t leg) {
  legStop();
  aPos = bPos = 0;

  if (leg) {
    GPSET(LEG_A_UP);
    GPSET(LEG_B_DOWN);
  } else {
    GPSET(LEG_A_DOWN);
    GPSET(LEG_B_UP);
  }
}

void legStop(void) {
  syncDirection = 0;
  
  GPCLEAR(LEG_A_DOWN);
  GPCLEAR(LEG_A_UP);
  GPCLEAR(LEG_B_DOWN);
  GPCLEAR(LEG_B_UP);
}
