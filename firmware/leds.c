#include "leds.h"
#include "board.h"

void ledInit(void) {
  GPOUTPUT(LED_GREEN);
  GPOUTPUT(LED_YELLOW);
}

void setGreenLed(uint8_t on) {
  GPWRITE(LED_GREEN, !on);
}

void setYellowLed(uint8_t on) {
  GPWRITE(LED_YELLOW, !on);
}

void ledSet(uint8_t mask) {
  setYellowLed(mask & 1);
  setGreenLed(mask & 2);
}

void ledBooting(void) {
  ledSet(3);
}

void ledBooted(void) {
  ledSet(2);
}

