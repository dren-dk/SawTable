#pragma once

typedef enum {
  BTN_NONE = 0,
  BTN_3 = 1,
  BTN_2 = 2,
  BTN_1 = 4,
  BTN_D = 5,
  BTN_U = 6,
  BTN_RESET = 8,
  BTN_S = 10
} Button;

void buttonInit(void);

Button readButtons(void);
