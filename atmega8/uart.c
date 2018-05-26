/*
 * ----------------------------------------------------------------------------
 * "THE BEER-WARE LICENSE" (Revision 42):
 * <joerg@FreeBSD.ORG> wrote this file.  As long as you retain this notice you
 * can do whatever you want with this stuff. If we meet some day, and you think
 * this stuff is worth it, you can buy me a beer in return.        Joerg Wunsch
 * ----------------------------------------------------------------------------
 *
 * Stdio demo, UART implementation
 *
 * $Id: uart.c,v 1.1.2.1 2005/12/28 22:35:08 joerg_wunsch Exp $
 */
#include <stdint.h>
#include <stdio.h>

#include <avr/io.h>
#include <util/delay.h>

#include "uart.h"

#if defined(UCSR0A)

#define UCSRnA UCSR0A
#define UCSRnB UCSR0B
#define UDREn UDRE0
#define UDRn UDR0
#define FEn FE0
#define RXCn RXC0
#define DORn DOR0
#define RXENn RXEN0
#define TXENn TXEN0
#define U2Xn U2X0
#define UBRRnH UBRR0H
#define UBRRnL UBRR0L


#elif  defined(UCSR1A)

#define UCSRnA UCSR1A
#define UCSRnB UCSR1B
#define UDREn UDRE1
#define UDRn UDR1
#define FEn FE1
#define RXCn RXC1
#define DORn DOR1
#define RXENn RXEN1
#define TXENn TXEN1
#define U2Xn U2X1
#define UBRRnH UBRR1H
#define UBRRnL UBRR1L


#else
#error "Neither uart 0 or uart 1 exist"
#endif


int uart_putchar(char c, FILE *stream){

  if (c == '\n') {
    uart_putchar('\r', stream);
  }
  loop_until_bit_is_set(UCSRnA, UDREn);
  UDRn = c;
  
  return 0;
}

int uart_getchar(FILE *stream) {

  if (UCSRnA & 1<<RXCn) {
    if (UCSRnA & _BV(FEn))
      return _FDEV_EOF;
    if (UCSRnA & _BV(DORn))
      return _FDEV_ERR;
    
    return UDRn;
  } else {
    return -1000;
  }
}

void uartInit(void) {
  UCSRnA = _BV(U2Xn);   
  UBRRnH = 0;
  UBRRnL = (F_CPU / (8UL * UART_BAUD)) - 1;
  UCSRnB = _BV(TXENn) | _BV(RXENn); /* tx/rx enable */
  
  static FILE uart_output = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);
  static FILE uart_input = FDEV_SETUP_STREAM(NULL, uart_getchar, _FDEV_SETUP_READ);
  
  stdout = &uart_output;
  stdin  = &uart_input;
}

