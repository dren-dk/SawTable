EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:promicro
LIBS:micro-finger-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L promicro M?
U 1 1 5A907767
P 3700 1400
F 0 "M?" H 4050 -950 60  0000 C CNN
F 1 "promicro" H 4050 1550 60  0000 C CNN
F 2 "" H 3700 1700 60  0000 C CNN
F 3 "" H 3700 1700 60  0000 C CNN
	1    3700 1400
	1    0    0    -1  
$EndComp
Text GLabel 3300 1400 0    60   Input ~ 0
PD3
Text GLabel 3300 1600 0    60   Input ~ 0
PD2
Text GLabel 3300 2200 0    60   Input ~ 0
PD1
Text GLabel 3300 2400 0    60   Input ~ 0
PD0
Text GLabel 3300 2600 0    60   Input ~ 0
PD4
Text GLabel 3300 2800 0    60   Input ~ 0
PD6
Text GLabel 3300 3000 0    60   Input ~ 0
PD7
Text GLabel 3300 3200 0    60   Input ~ 0
PE6
Text GLabel 3300 3400 0    60   Input ~ 0
PB4
Text GLabel 3300 3600 0    60   Input ~ 0
PB5
Text GLabel 4800 1800 2    60   Input ~ 0
~RESET
Text GLabel 4800 2200 2    60   Input ~ 0
PF4
Text GLabel 4800 2400 2    60   Input ~ 0
PF5
Text GLabel 4800 2600 2    60   Input ~ 0
PF6
Text GLabel 4800 2800 2    60   Input ~ 0
PF7
Text GLabel 4800 3000 2    60   Input ~ 0
SCK
Text GLabel 4800 3200 2    60   Input ~ 0
MISO
Text GLabel 4800 3400 2    60   Input ~ 0
MOSI
Text GLabel 4800 3600 2    60   Input ~ 0
PB6
$Comp
L GND #PWR?
U 1 1 5A9079DD
P 3300 1800
F 0 "#PWR?" H 3300 1550 50  0001 C CNN
F 1 "GND" H 3300 1650 50  0000 C CNN
F 2 "" H 3300 1800 50  0000 C CNN
F 3 "" H 3300 1800 50  0000 C CNN
	1    3300 1800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A907A26
P 4750 1600
F 0 "#PWR?" H 4750 1350 50  0001 C CNN
F 1 "GND" H 4750 1450 50  0000 C CNN
F 2 "" H 4750 1600 50  0000 C CNN
F 3 "" H 4750 1600 50  0000 C CNN
	1    4750 1600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A907AC4
P 3300 2000
F 0 "#PWR?" H 3300 1750 50  0001 C CNN
F 1 "GND" H 3300 1850 50  0000 C CNN
F 2 "" H 3300 2000 50  0000 C CNN
F 3 "" H 3300 2000 50  0000 C CNN
	1    3300 2000
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A907AF5
P 4750 2000
F 0 "#PWR?" H 4750 1850 50  0001 C CNN
F 1 "+5V" H 4750 2140 50  0000 C CNN
F 2 "" H 4750 2000 50  0000 C CNN
F 3 "" H 4750 2000 50  0000 C CNN
	1    4750 2000
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR?
U 1 1 5A907B27
P 4750 1400
F 0 "#PWR?" H 4750 1250 50  0001 C CNN
F 1 "+12V" H 4750 1540 50  0000 C CNN
F 2 "" H 4750 1400 50  0000 C CNN
F 3 "" H 4750 1400 50  0000 C CNN
	1    4750 1400
	0    1    1    0   
$EndComp
$Comp
L CONN_02X03 P?
U 1 1 5A91571E
P 1800 1650
F 0 "P?" H 1800 1850 50  0000 C CNN
F 1 "ISP" H 1800 1450 50  0000 C CNN
F 2 "" H 1800 450 50  0000 C CNN
F 3 "" H 1800 450 50  0000 C CNN
	1    1800 1650
	1    0    0    -1  
$EndComp
Text GLabel 1400 1550 0    60   Input ~ 0
MISO
Text GLabel 1050 1650 0    60   Input ~ 0
SCK
Text GLabel 1400 1750 0    60   Input ~ 0
~RESET
Text GLabel 2200 1650 2    60   Input ~ 0
MOSI
$Comp
L +5V #PWR?
U 1 1 5A91597F
P 2150 1400
F 0 "#PWR?" H 2150 1250 50  0001 C CNN
F 1 "+5V" H 2150 1540 50  0000 C CNN
F 2 "" H 2150 1400 50  0000 C CNN
F 3 "" H 2150 1400 50  0000 C CNN
	1    2150 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A9159FE
P 2150 1900
F 0 "#PWR?" H 2150 1650 50  0001 C CNN
F 1 "GND" H 2150 1750 50  0000 C CNN
F 2 "" H 2150 1900 50  0000 C CNN
F 3 "" H 2150 1900 50  0000 C CNN
	1    2150 1900
	1    0    0    -1  
$EndComp
$Comp
L TRANSFO T?
U 1 1 5AEC9D2A
P 2000 5000
F 0 "T?" H 2000 5250 50  0000 C CNN
F 1 "Current transformer" H 2000 4700 50  0000 C CNN
F 2 "" H 2000 5000 50  0000 C CNN
F 3 "" H 2000 5000 50  0000 C CNN
	1    2000 5000
	1    0    0    -1  
$EndComp
Text Notes 1700 5550 0    60   ~ 0
1000:1\n5 A -> 5 mA
$Comp
L D 1n4148
U 1 1 5AEC9E43
P 2950 4800
F 0 "1n4148" H 2950 4900 50  0000 C CNN
F 1 "D" H 2950 4700 50  0000 C CNN
F 2 "" H 2950 4800 50  0000 C CNN
F 3 "" H 2950 4800 50  0000 C CNN
	1    2950 4800
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5AEC9E74
P 2600 5300
F 0 "#PWR?" H 2600 5050 50  0001 C CNN
F 1 "GND" H 2600 5150 50  0000 C CNN
F 2 "" H 2600 5300 50  0000 C CNN
F 3 "" H 2600 5300 50  0000 C CNN
	1    2600 5300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AECA52B
P 2600 5000
F 0 "R?" V 2680 5000 50  0000 C CNN
F 1 "680" V 2600 5000 50  0000 C CNN
F 2 "" V 2530 5000 50  0000 C CNN
F 3 "" H 2600 5000 50  0000 C CNN
	1    2600 5000
	1    0    0    -1  
$EndComp
Text GLabel 3750 4800 2    60   Input ~ 0
PF4
$Comp
L TRANSFO T?
U 1 1 5AECAB53
P 2000 5950
F 0 "T?" H 2000 6200 50  0000 C CNN
F 1 "Current transformer" H 2000 5650 50  0000 C CNN
F 2 "" H 2000 5950 50  0000 C CNN
F 3 "" H 2000 5950 50  0000 C CNN
	1    2000 5950
	1    0    0    -1  
$EndComp
Text Notes 1700 6500 0    60   ~ 0
1000:1\n5 A -> 5 mA
$Comp
L GND #PWR?
U 1 1 5AECAB66
P 2600 6250
F 0 "#PWR?" H 2600 6000 50  0001 C CNN
F 1 "GND" H 2600 6100 50  0000 C CNN
F 2 "" H 2600 6250 50  0000 C CNN
F 3 "" H 2600 6250 50  0000 C CNN
	1    2600 6250
	1    0    0    -1  
$EndComp
Text GLabel 3750 5750 2    60   Input ~ 0
PF5
Text GLabel 4550 4800 0    60   Input ~ 0
PF6
$Comp
L R R?
U 1 1 5AECACFF
P 5000 4800
F 0 "R?" V 5080 4800 50  0000 C CNN
F 1 "4k7" V 5000 4800 50  0000 C CNN
F 2 "" V 4930 4800 50  0000 C CNN
F 3 "" H 5000 4800 50  0000 C CNN
	1    5000 4800
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_CBE Q?
U 1 1 5AECAD5C
P 5750 4800
F 0 "Q?" H 6050 4850 50  0000 R CNN
F 1 "BC547" H 6350 4750 50  0000 R CNN
F 2 "" H 5950 4900 50  0000 C CNN
F 3 "" H 5750 4800 50  0000 C CNN
	1    5750 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AECAE54
P 5850 5100
F 0 "#PWR?" H 5850 4850 50  0001 C CNN
F 1 "GND" H 5850 4950 50  0000 C CNN
F 2 "" H 5850 5100 50  0000 C CNN
F 3 "" H 5850 5100 50  0000 C CNN
	1    5850 5100
	1    0    0    -1  
$EndComp
$Comp
L OPTO-TRIAC U?
U 1 1 5AECAEFF
P 6550 4500
F 0 "U?" H 6350 4700 50  0000 L CNN
F 1 "OPTO-TRIAC" H 6350 4300 50  0000 L CNN
F 2 "" H 6550 4500 50  0000 L CIN
F 3 "" H 6525 4500 50  0000 L CNN
	1    6550 4500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5AECAF94
P 5850 4350
F 0 "#PWR?" H 5850 4200 50  0001 C CNN
F 1 "+12V" H 5850 4490 50  0000 C CNN
F 2 "" H 5850 4350 50  0000 C CNN
F 3 "" H 5850 4350 50  0000 C CNN
	1    5850 4350
	1    0    0    -1  
$EndComp
Text GLabel 4550 6150 0    60   Input ~ 0
PF7
$Comp
L R R?
U 1 1 5AECB861
P 4850 6150
F 0 "R?" V 4930 6150 50  0000 C CNN
F 1 "4k7" V 4850 6150 50  0000 C CNN
F 2 "" V 4780 6150 50  0000 C CNN
F 3 "" H 4850 6150 50  0000 C CNN
	1    4850 6150
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_CBE Q?
U 1 1 5AECB867
P 5300 6150
F 0 "Q?" H 5600 6200 50  0000 R CNN
F 1 "BC547" H 5300 5950 50  0000 R CNN
F 2 "" H 5500 6250 50  0000 C CNN
F 3 "" H 5300 6150 50  0000 C CNN
	1    5300 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AECB86F
P 5400 6450
F 0 "#PWR?" H 5400 6200 50  0001 C CNN
F 1 "GND" H 5400 6300 50  0000 C CNN
F 2 "" H 5400 6450 50  0000 C CNN
F 3 "" H 5400 6450 50  0000 C CNN
	1    5400 6450
	1    0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 5AECB8B5
P 5400 5700
F 0 "D?" H 5400 5800 50  0000 C CNN
F 1 "D" H 5400 5600 50  0000 C CNN
F 2 "" H 5400 5700 50  0000 C CNN
F 3 "" H 5400 5700 50  0000 C CNN
	1    5400 5700
	0    1    1    0   
$EndComp
$Comp
L RELAY_2RT K?
U 1 1 5AECBB0D
P 6350 6000
F 0 "K?" H 6300 6400 50  0000 C CNN
F 1 "RELAY_2RT" H 6500 5500 50  0000 C CNN
F 2 "" H 6350 6000 50  0000 C CNN
F 3 "" H 6350 6000 50  0000 C CNN
	1    6350 6000
	1    0    0    1   
$EndComp
Wire Wire Line
	4800 3600 4600 3600
Wire Wire Line
	4600 3400 4800 3400
Wire Wire Line
	4800 3200 4600 3200
Wire Wire Line
	4600 3000 4800 3000
Wire Wire Line
	4800 2800 4600 2800
Wire Wire Line
	4600 2600 4800 2600
Wire Wire Line
	4800 2400 4600 2400
Wire Wire Line
	4600 2200 4800 2200
Wire Wire Line
	4800 1800 4600 1800
Wire Wire Line
	3500 1400 3300 1400
Wire Wire Line
	3300 1600 3500 1600
Wire Wire Line
	3500 2200 3300 2200
Wire Wire Line
	3300 2400 3500 2400
Wire Wire Line
	3500 2600 3300 2600
Wire Wire Line
	3300 2800 3500 2800
Wire Wire Line
	3500 3000 3300 3000
Wire Wire Line
	3300 3200 3500 3200
Wire Wire Line
	3500 3400 3300 3400
Wire Wire Line
	3300 3600 3500 3600
Wire Wire Line
	4750 1600 4600 1600
Wire Wire Line
	3300 1800 3500 1800
Wire Wire Line
	3300 2000 3500 2000
Wire Wire Line
	4750 2000 4600 2000
Wire Wire Line
	4750 1400 4600 1400
Wire Wire Line
	2050 1650 2200 1650
Wire Wire Line
	1550 1550 1400 1550
Wire Wire Line
	1050 1650 1550 1650
Wire Wire Line
	1550 1750 1400 1750
Wire Wire Line
	2150 1400 2150 1550
Wire Wire Line
	2150 1550 2050 1550
Wire Wire Line
	2150 1900 2150 1750
Wire Wire Line
	2150 1750 2050 1750
Wire Wire Line
	2400 5200 2600 5200
Wire Wire Line
	2600 5200 3250 5200
Wire Wire Line
	3250 5200 3500 5200
Connection ~ 2600 5200
Wire Wire Line
	3250 5200 3250 5150
Wire Wire Line
	3100 4800 3250 4800
Wire Wire Line
	3250 4800 3500 4800
Wire Wire Line
	3500 4800 3750 4800
Wire Wire Line
	3250 4800 3250 4850
Wire Wire Line
	3500 5200 3500 5150
Wire Wire Line
	3500 4800 3500 4850
Connection ~ 3250 4800
Connection ~ 3500 4800
Wire Wire Line
	5150 4800 5550 4800
Wire Wire Line
	4850 4800 4550 4800
Wire Wire Line
	5850 5100 5850 5000
Wire Wire Line
	5850 4350 5850 4400
Wire Wire Line
	5850 4400 6250 4400
Wire Wire Line
	6250 4600 5850 4600
Wire Wire Line
	5000 6150 5100 6150
Wire Wire Line
	4700 6150 4550 6150
Wire Wire Line
	5400 6450 5400 6350
Wire Wire Line
	5400 5450 5400 5500
Wire Wire Line
	5400 5500 5400 5550
Wire Wire Line
	5400 5850 5400 5900
Wire Wire Line
	5400 5900 5400 5950
Wire Wire Line
	5400 5500 5950 5500
Wire Wire Line
	5950 5500 5950 5650
Connection ~ 5400 5500
Wire Wire Line
	5400 5900 5700 5900
Wire Wire Line
	5700 5900 5700 5750
Wire Wire Line
	5700 5750 5950 5750
Connection ~ 5400 5900
Text Notes 2700 1450 0    60   ~ 0
Vent A
Text Notes 2700 1650 0    60   ~ 0
Vent B
Text Notes 1150 5050 0    60   ~ 0
Current A
Text Notes 1050 6000 0    60   ~ 0
Current B
Text Notes 7000 5750 0    60   ~ 0
Vent motor
Text Notes 7100 4500 0    60   ~ 0
Vac
Text Notes 5100 2200 0    60   ~ 0
Current A
Text Notes 5100 2450 0    60   ~ 0
Current B
Text Notes 5100 2650 0    60   ~ 0
Vac
Text Notes 5100 2850 0    60   ~ 0
Vent motor
Wire Wire Line
	6750 6350 6750 6850
Wire Wire Line
	6750 6850 6750 6900
Wire Wire Line
	5950 6250 5950 6850
Wire Wire Line
	5950 6850 6100 6850
$Comp
L R Motor
U 1 1 5AEDFC55
P 6250 6850
F 0 "Motor" V 6330 6850 50  0000 C CNN
F 1 "M" V 6250 6850 50  0000 C CNN
F 2 "" V 6180 6850 50  0000 C CNN
F 3 "" H 6250 6850 50  0000 C CNN
	1    6250 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 6150 6750 6150
$Comp
L +24V #PWR?
U 1 1 5AEDFE4E
P 6850 6100
F 0 "#PWR?" H 6850 5950 50  0001 C CNN
F 1 "+24V" H 6850 6240 50  0000 C CNN
F 2 "" H 6850 6100 50  0000 C CNN
F 3 "" H 6850 6100 50  0000 C CNN
	1    6850 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 6150 6850 6100
Wire Wire Line
	6750 6850 6400 6850
$Comp
L GND #PWR?
U 1 1 5AEDFFAF
P 6750 6900
F 0 "#PWR?" H 6750 6650 50  0001 C CNN
F 1 "GND" H 6750 6750 50  0000 C CNN
F 2 "" H 6750 6900 50  0000 C CNN
F 3 "" H 6750 6900 50  0000 C CNN
	1    6750 6900
	1    0    0    -1  
$EndComp
Connection ~ 6750 6850
$Comp
L +24V #PWR?
U 1 1 5AEE0093
P 5400 5450
F 0 "#PWR?" H 5400 5300 50  0001 C CNN
F 1 "+24V" H 5400 5590 50  0000 C CNN
F 2 "" H 5400 5450 50  0000 C CNN
F 3 "" H 5400 5450 50  0000 C CNN
	1    5400 5450
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AEE0309
P 3250 5000
F 0 "R?" V 3330 5000 50  0000 C CNN
F 1 "100k" V 3250 5000 50  0000 C CNN
F 2 "" V 3180 5000 50  0000 C CNN
F 3 "" H 3250 5000 50  0000 C CNN
	1    3250 5000
	1    0    0    -1  
$EndComp
Connection ~ 3250 5200
Wire Wire Line
	2600 5150 2600 5200
Wire Wire Line
	2600 5200 2600 5300
Wire Wire Line
	2400 4800 2600 4800
Wire Wire Line
	2600 4800 2800 4800
Wire Wire Line
	2600 4800 2600 4850
Connection ~ 2600 4800
$Comp
L CP C?
U 1 1 5AEE06E7
P 3500 5000
F 0 "C?" H 3525 5100 50  0000 L CNN
F 1 "10uF" H 3525 4900 50  0000 L CNN
F 2 "" H 3538 4850 50  0000 C CNN
F 3 "" H 3500 5000 50  0000 C CNN
	1    3500 5000
	1    0    0    -1  
$EndComp
$Comp
L D 1n4148
U 1 1 5AEE0B5A
P 2950 5750
F 0 "1n4148" H 2950 5850 50  0000 C CNN
F 1 "D" H 2950 5650 50  0000 C CNN
F 2 "" H 2950 5750 50  0000 C CNN
F 3 "" H 2950 5750 50  0000 C CNN
	1    2950 5750
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5AEE0B60
P 2600 5950
F 0 "R?" V 2680 5950 50  0000 C CNN
F 1 "680" V 2600 5950 50  0000 C CNN
F 2 "" V 2530 5950 50  0000 C CNN
F 3 "" H 2600 5950 50  0000 C CNN
	1    2600 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6150 2600 6150
Wire Wire Line
	2600 6150 3250 6150
Wire Wire Line
	3250 6150 3500 6150
Connection ~ 2600 6150
Wire Wire Line
	3250 6150 3250 6100
Wire Wire Line
	3100 5750 3250 5750
Wire Wire Line
	3250 5750 3500 5750
Wire Wire Line
	3500 5750 3750 5750
Wire Wire Line
	3250 5750 3250 5800
Wire Wire Line
	3500 6150 3500 6100
Wire Wire Line
	3500 5750 3500 5800
Connection ~ 3250 5750
Connection ~ 3500 5750
$Comp
L R R?
U 1 1 5AEE0B73
P 3250 5950
F 0 "R?" V 3330 5950 50  0000 C CNN
F 1 "100k" V 3250 5950 50  0000 C CNN
F 2 "" V 3180 5950 50  0000 C CNN
F 3 "" H 3250 5950 50  0000 C CNN
	1    3250 5950
	1    0    0    -1  
$EndComp
Connection ~ 3250 6150
Wire Wire Line
	2600 6100 2600 6150
Wire Wire Line
	2600 6150 2600 6250
Wire Wire Line
	2400 5750 2600 5750
Wire Wire Line
	2600 5750 2800 5750
Wire Wire Line
	2600 5750 2600 5800
Connection ~ 2600 5750
$Comp
L CP C?
U 1 1 5AEE0B80
P 3500 5950
F 0 "C?" H 3525 6050 50  0000 L CNN
F 1 "10uF" H 3525 5850 50  0000 L CNN
F 2 "" H 3538 5800 50  0000 C CNN
F 3 "" H 3500 5950 50  0000 C CNN
	1    3500 5950
	1    0    0    -1  
$EndComp
Text Notes 2500 2250 0    60   ~ 0
Leg A Down
Text Notes 2600 2450 0    60   ~ 0
Leg A Up
Text Notes 2500 2600 0    60   ~ 0
Leg B Down
Text Notes 2600 2800 0    60   ~ 0
Leg B Up
Text Notes 2400 3450 0    60   ~ 0
Leg A Sense
Text Notes 2400 3600 0    60   ~ 0
Leg B Sense
Text Notes 5150 3050 0    60   ~ 0
Button Up
Text Notes 5150 3250 0    60   ~ 0
Button Down
Text Notes 5150 3450 0    60   ~ 0
Button 1
Text Notes 5150 3650 0    60   ~ 0
Button 2
Text Notes 2600 3250 0    60   ~ 0
Button 3
Text Notes 2600 3050 0    60   ~ 0
Button S
$EndSCHEMATC
