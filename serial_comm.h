/* 
 * File:   serial_comm.h
 * Author: root
 *
 * Created on 16 de abril de 2021, 3:16
 */

#ifndef SERIAL_COMM_H
#define	SERIAL_COMM_H


#endif	/* SERIAL_COMM_H */
#include <PPS.h>
#include <uart.h>
#include <csp/csp_types.h>

#define RS2_M_UART1     0	// Usar modulo UART1
#define	RS2_M_UART2	1	// Usar modulo UART2
#define	RS2_M_UART3	2	// Usar modulo UART3
#define	RS2_M_UART4	3	// Usar modulo UART4
void serial_conf();
void ConfigRS232(unsigned int abaud, unsigned int modulo);
unsigned int ReadRS232(unsigned int modulo);
void RS232EnableRxInterrupt(unsigned int modulo);
void Uart_Trx_S(csp_packet_t *packet);
void Uart_Trx_test(char *packet, int size);
void TRX_init();