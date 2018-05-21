# SawTable
An ATmega32u4 based thingy for driving liniear actuators for table legs and controlling a dust collection system in my table saw table


# Current transformer

The current transformer outputs 1000:1 current, so 5 A through the primary gives a 5 mA secondary current.

I want the maximum current to be 8 A on the primary, so that's 8 mA on the
secondary, which I want to measure with an ADC input on the AVR running at 5V,
so full ADC range is 0-5 V.

To detect the averaged current easily I'll use a diode detector with a 10uF + 100k
discharge resistor.

The diode drops 0.7 V, so I need full range (8 mA) to result in 5.7 V at the
transformer, so the ADC sees 5V.

A resistor that drops 5.7V at 8 mA is 712 Ohm, rounding off to the nearest E24
value gives me 680 Ohm and a full-range of 0 - 8.4 A.


# Pin assignments

| Define         | AVR | Pin | Description |
|----------------|-----|-----|-------------|
| VALVE_A         | PD3 | 1   | Internal pullup, pulled low when valve is in position A |
| VALVE_B         | PD2 | 2   | Internal pullup, pulled low when valve is in position B |
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


# Control scheme

* Up/Down Both legs up/down at full speed.
* 1: Leg A up, Leg B down.
* 2: Leg A down, Leg B up.
* 3: Toggle park / deploy.
* S: Toggle manual vacuum on external port.


