#include "leds.h"
#include "board.h"

void ledInit(void) {
  GPOUTPUT(LED_GREEN);
  GPOUTPUT(LED_YELLOW);
}

void ledSet(uint8_t mask) {
  GPWRITE(LED_YELLOW, !(mask & 1));
  GPWRITE(LED_GREEN, !(mask & 2));
}

void ledBooting(void) {
  ledSet(3);
}

void ledBooted(void) {
  ledSet(2);
}

