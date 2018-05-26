#pragma once

#include <inttypes.h>

void ledInit(void);

void ledSet(uint8_t mask);
void ledBooting(void);
void ledBooted(void);
void setGreenLed(uint8_t on);
void setYellowLed(uint8_t on);


