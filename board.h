#pragma once

#include "avr8gpio.h"

/*
| Define         | AVR | Pin | Description |
|----------------|-----|-----|-------------|
| VALVE_A        | PD3 | 1   | Internal pullup, pulled low when valve is in position A |
| VALVE_B        | PD2 | 2   | Internal pullup, pulled low when valve is in position B |
| LEG_A_DOWN     | PD1 | 5   | H-Bridge for leg A, down |
| LEG_A_UP       | PD0 | 6   | H-Bridge for leg A, up |
| LEG_B_DOWN     | PD4 | 7   | H-Bridge for leg B, down |
| LEG_B_UP       | PD6 | 8   | H-Bridge for leg B, up |
|                | PD7 | 9   |  |
|                | PE6 | 10  |  |
| LEG_A_SENSE    | PB4 | 11  | Internal pullup, pulled low by pulse sensor in leg A |
| LEG_B_SENSE    | PB5 | 12  | Internal pullup, pulled low by pulse sensor in leg B |
| BUTTON_3       | PB6 | 13  |  |
| BUTTON_2       | PB2 | 14  |  |
| BUTTON_1       | PB3 | 15  |  |
| BUTTON_0       | PB1 | 16  |  |
| VALVE_MOTOR    | PF7 | 17  | High runs valve motor |
| VAC_MOTOR      | PF6 | 18  | High runs vacuum motor |
| CURRENT_B      | PF5 | 19  | ADC 5 current sense input for equipment B|
| CURRENT_A      | PF4 | 20  | ADC 4 current sense input for equipment A|
*/



#define VALVE_A        GPD3
#define VALVE_B        GPD2
#define LEG_A_DOWN     GPD1
#define LEG_A_UP       GPD0
#define LEG_B_DOWN     GPD4
#define LEG_B_UP       GPD6
#define LEG_A_SENSE    GPB4
#define LEG_B_SENSE    GPB5
#define BUTTON_3       GPB6
#define BUTTON_2       GPB2
#define BUTTON_1       GPB3
#define BUTTON_0       GPB1
#define VALVE_MOTOR    GPF7
#define VAC_MOTOR      GPF6
#define CURRENT_B      GPF5
#define CURRENT_B_ADC  5
#define CURRENT_A      GPF4
#define CURRENT_A_ADC  4


