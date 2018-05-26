#pragma once

typedef enum {
  VAC_OFF,
  VAC_MANUAL_ON_A,
  VAC_MANUAL_ON_B,
  VAC_AUTO_ON_A,
  VAC_AUTO_ON_B,
} VacuumState;

void vacInit(void);

VacuumState getVacState(void);
void setVacState(VacuumState state);
void toggleVacManual(VacuumState state);
void autoVac(void);
