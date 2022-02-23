#include <stdio.h> 
#include <string.h>
#include "task_test.h"
#include "FreeRTOS.h"
#include "queue.h"
#include "task.h"
#include "semphr.h"
#include <csp/interfaces/csp_if_i2c.h>
extern xSemaphoreHandle i2csem;

extern char P_flag;
extern unsigned char counter;
extern i2c_frame_t *frame_p;


void vTaskRxhandler(void *pvParameters){
    printf("rx handler\n");
    char plus=0;
    while(1){
        xSemaphoreTake(i2csem,portMAX_DELAY );//1/ portTICK_RATE_MS portMAX_DELAY
        for(plus=0;plus<70;plus++); // Para cristal de 24 MHz, de 32MHz usar plus<70
        if(I2C3STATbits.P==1){
                frame_p->len = counter;
                csp_i2c_rx(frame_p, NULL);
                //printf("1");
                //csp_buffer_free(frame_p);
                //frame_p = NULL;
                counter=0;
                //printf("1");
        }
    }

}