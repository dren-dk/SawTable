# --------------------------------------
#         LUFA Project Makefile.
# --------------------------------------

# Run "make help" for target help.

BOARD=LEONARDO
MCU=atmega32u4
F_CPU=16000000
FLASH_SIZE_KB=32
BOOT_SECTION_SIZE_KB=4
LUFA_PATH    = lufa-LUFA-170418/LUFA
TARGET       = sawtable
AVRDUDE_PROGRAMMER=atmelice_isp

ARCH         = AVR8
F_USB        = $(F_CPU)
OPTIMIZATION = s
SRC          = $(wildcard *.c) $(wildcard atmega8/*.c) $(LUFA_SRC_USB) $(LUFA_SRC_USBCLASS) $(LUFA_SRC_TWI)
CC_FLAGS     = -DUSE_LUFA_CONFIG_HEADER -IConfig/ -Iatmega8
LD_FLAGS     =

#DISABLE_WARNINGS = -Wno-unused-function -Wno-overlength-strings
#CC_FLAGS  += -Wall $(DISABLE_WARNINGS) -pedantic-errors -Werror -mcall-prologues -std=gnu11 

#OBJDIR = .

# Default target
all:

# Include LUFA build script makefiles
include $(LUFA_PATH)/Build/lufa_core.mk
include $(LUFA_PATH)/Build/lufa_sources.mk
include $(LUFA_PATH)/Build/lufa_build.mk
include $(LUFA_PATH)/Build/lufa_cppcheck.mk
include $(LUFA_PATH)/Build/lufa_doxygen.mk
include $(LUFA_PATH)/Build/lufa_dfu.mk
include $(LUFA_PATH)/Build/lufa_hid.mk
include $(LUFA_PATH)/Build/lufa_avrdude.mk
include $(LUFA_PATH)/Build/lufa_atprogram.mk
