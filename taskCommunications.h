/* 
 * File:   taskCommunications.h
 * Author: root
 *
 * Created on 17 de mayo de 2021, 8:46
 */

#ifndef TASKCOMMUNICATIONS_H
#define	TASKCOMMUNICATIONS_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <stdio.h>
    
#include "config.h"
#include "serial_comm.h"

#include <csp/csp.h>
#include <csp/csp_types.h>
#include <csp/csp_endian.h>
#include "FreeRTOS.h"
#include <queue.h>
#include <task.h>
#include <csp/drivers/i2c.h>
#include <csp/interfaces/csp_if_i2c.h>
#include <uart.h>

#define TRX_TMFRAMELEN8 64  


void vTaskCommunications();
void TRX_mode(char* mode);


#ifdef	__cplusplus
}
#endif

#endif	/* TASKCOMMUNICATIONS_H */

