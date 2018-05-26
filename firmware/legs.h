#pragma once

#include <inttypes.h>

void initLegs(void);

void legRetract(void);
void legDeploy(void);
void legPitch(uint8_t leg);
void legStop(void);
