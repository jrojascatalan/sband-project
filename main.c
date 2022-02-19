/*Project Type: Application - Configuration: default
 * File:   main.c
 * Author: javier
 *
 * Created on 31 de marzo de 2021, 15:59
 */

#define PPC_DEFAULT_CW1()	_CONFIG1(JTAGEN_OFF& GCP_OFF& GWRP_OFF& FWDTEN_OFF& FWPSA_PR128& WDTPS_PS32768 )
#define PPC_DEFAULT_CW2()	_CONFIG2(IESO_OFF& PLLDIV_NODIV&  FNOSC_PRI & FCKSM_CSECME& OSCIOFNC_OFF& IOL1WAY_ON& POSCMOD_HS& PLL_96MHZ_ON )
#define PPC_DEFAULT_CW3()	_CONFIG3(WPCFG_WPCFGDIS& WPDIS_WPDIS)


// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#include <uart.h>
#include <stdio.h>
#include "FreeRTOSConfig.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "semphr.h"
#include "list.h"
#include "pic_config.h"
#include "task_test.h"
#include "taskCommunications.h"
#include "serial_comm.h"
#include <csp/drivers/i2c.h>
#include "i2c_comm.h"
#include "config.h"
PPC_DEFAULT_CW1();
PPC_DEFAULT_CW2();
PPC_DEFAULT_CW3();
xQueueHandle i2cRxQueue;
xQueueHandle i2cCounterQueue;

xQueueHandle UARTRx1queue;
xQueueHandle UARTRx2queue;
//xTaskHandle vTaskblinkHandle;

int main(void){ 
    i2cRxQueue = xQueueCreate(6*I2C_MTU, sizeof(char)); 
    i2cCounterQueue = xQueueCreate(20, sizeof(char)); 
    UARTRx1queue = xQueueCreate(I2C_MTU, sizeof(char)); 
    UARTRx2queue = xQueueCreate(I2C_MTU, sizeof(char));
    
    GPIO_Init();
    serial_conf();
    //i2c1_open(157, 3);
    

    
    

    setup_libcsp();
    printf("CSP started\n");
    
    printf("TRX_init\n");
    TRX_init();
    //xTaskCreate(vTaskBlink,"blink",100,NULL,5,NULL);
    //xTaskCreate(vTaskPrint,"Print",500,NULL,5,NULL);
    xTaskCreate(vTaskCommunications,"communication",500,NULL,9,NULL);
    xTaskCreate(vTaskConsola,"consola",300,NULL,9,NULL);
    //xTaskCreate(vTaskPing,"ping",500,NULL,9,NULL);
    vTaskStartScheduler();
while(1){

}
    
    return 0;
}
void vApplicationIdleHook(void)
{
    /*
     * **configUSE_IDLE_HOOK must be set to 1**
     * Esta funcion se ejecuta cuando el procesador
     * no esta siendo utilizado por otra tarea
     */

    ClrWdt();
    Idle();
}

void vApplicationStackOverflowHook(xTaskHandle* pxTask, signed char* pcTaskName)
{
   
}

#define STDIN   0
#define STDOUT  1
#define STDERR  2
#define LF   '\n'
#define CR   '\r'
#define STDOUT_NO_CR

void    mon_putc(char ch);



#define STDOUT_NO_CR_WITH_LF
void mon_putc(char ch)
{
    while(U1STAbits.UTXBF);  /* wait if the buffer is full */
#ifndef STDOUT_NO_CR_WITH_LF
    if (LF == ch)
        putcUART1(CR);
#endif
#ifdef STDOUT_NO_CR
    if (CR == ch)
        return;
#endif
    putcUART1(ch);
}