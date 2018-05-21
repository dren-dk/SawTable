#include "buttons.h"
#include "board.h"

void buttonInit() {
  GPINPUT(BUTTON_3);
  GPINPUT(BUTTON_2);
  GPINPUT(BUTTON_1);
  GPINPUT(BUTTON_0);
}

Button readButtons() {
  Button res = 0;
  if (GPREAD(BUTTON_0)) {
    res += 1;
  }

  if (GPREAD(BUTTON_1)) {
    res += 2;
  }

  if (GPREAD(BUTTON_2)) {
    res += 4;
  }

  if (GPREAD(BUTTON_3)) {
    res += 8;
  }

  return res;
}
