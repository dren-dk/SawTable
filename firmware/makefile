PROJ=sawtable

include ../atmega8/makefile

AVR_PROGRAMMER    = -c atmelice_isp -P usb
AVR               = atmega32u4
UART_BAUD         = 1000000
F_CPU             = 16000000
SLEEP_10_MS_COUNT = 79

readfuses:
	avrdude $(AVR_PROGRAMMER) -p $(AVR) -B 100 -U lfuse:r: -U hfuse:r
fuses:
	avrdude $(AVR_PROGRAMMER) -p $(AVR) -B 100 -U lfuse:w:0xce:m -U hfuse:w:0xd8:m

