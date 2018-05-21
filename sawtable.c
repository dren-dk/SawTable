#include "VirtualSerial.h"
#include <avr/wdt.h> 
#include <stdio.h>

#include "board.h"

#include "buttons.h"
#include "vacuum.h"


/** LUFA CDC Class driver interface configuration and state information. This structure is
 *  passed to all CDC Class driver functions, so that multiple instances of the same class
 *  within a device can be differentiated from one another.
 */
USB_ClassInfo_CDC_Device_t VirtualSerial_CDC_Interface =
        {
                .Config =
                        {
                                .ControlInterfaceNumber   = INTERFACE_ID_CDC_CCI,
                                .DataINEndpoint           =
                                        {
                                                .Address          = CDC_TX_EPADDR,
                                                .Size             = CDC_TXRX_EPSIZE,
                                                .Banks            = 1,
                                        },
                                .DataOUTEndpoint =
                                        {
                                                .Address          = CDC_RX_EPADDR,
                                                .Size             = CDC_TXRX_EPSIZE,
                                                .Banks            = 1,
                                        },
                                .NotificationEndpoint =
                                        {
                                                .Address          = CDC_NOTIFICATION_EPADDR,
                                                .Size             = CDC_NOTIFICATION_EPSIZE,
                                                .Banks            = 1,
                                        },
                        },
        };


/** Standard file stream for the CDC interface when set up, so that the virtual CDC COM port can be
 *  used like any regular character stream in the C APIs.
 */
static FILE USBSerialStream;

/** Event handler for the library USB Connection event. */
void EVENT_USB_Device_Connect(void) {
  LEDs_SetAllLEDs(LEDMASK_USB_ENUMERATING);
}

/** Event handler for the library USB Disconnection event. */
void EVENT_USB_Device_Disconnect(void) {
  LEDs_SetAllLEDs(LEDMASK_USB_NOTREADY);
}

/** Event handler for the library USB Configuration Changed event. */
void EVENT_USB_Device_ConfigurationChanged(void) {
  bool ConfigSuccess = true;
  ConfigSuccess &= CDC_Device_ConfigureEndpoints(&VirtualSerial_CDC_Interface);  
  LEDs_SetAllLEDs(ConfigSuccess ? LEDMASK_USB_READY : LEDMASK_USB_ERROR);
}

/** Event handler for the library USB Control Request reception event. */
void EVENT_USB_Device_ControlRequest(void) {
  CDC_Device_ProcessControlRequest(&VirtualSerial_CDC_Interface);
}



int main(void) {
  wdt_enable(WDTO_4S);
  clock_prescale_set(clock_div_1);
  LEDs_Init();
  USB_Init();

  vacInit();
  buttonInit();
  
  
  CDC_Device_CreateStream(&VirtualSerial_CDC_Interface, &USBSerialStream);
    
  GPOUTPUT(LEG_A_DOWN);
  GPOUTPUT(LEG_A_UP);
  GPOUTPUT(LEG_B_DOWN);
  GPOUTPUT(LEG_B_UP);
  GPINPUT(LEG_A_SENSE);
  GPINPUT(LEG_B_SENSE);

  
  while (1) {
    wdt_reset();
    
    /* Must throw away unused bytes from the host, or it will lock up while waiting for the device */
    CDC_Device_ReceiveByte(&VirtualSerial_CDC_Interface);
    
    CDC_Device_USBTask(&VirtualSerial_CDC_Interface);
    USB_USBTask();

    Button button = readButtons();

    if (button == BTN_S) {
      toggleVacManual(VAC_MANUAL_ON_B);
    } else if (button == BTN_3) {
      toggleVacManual(VAC_MANUAL_ON_A);
    }        
  }
}


