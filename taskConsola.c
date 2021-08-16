#include <stdio.h> 
#include <string.h>
#include "serial_comm.h"
#include "task_test.h"
#include "FreeRTOS.h"
#include "queue.h"
#include "task.h"
#define BUFF_MAX_LENGTH 16
#define CMD_LENGTH 4



extern xQueueHandle UARTRx1queue;
extern xQueueHandle UARTRx2queue;

void UART_RX1_STR(xQueueHandle UARTRx1queue, char * buffer );
void UART_RX2_STR(xQueueHandle UARTRx2queue, char * buffer );

void vTaskConsola(void *pvParameters){
    printf("Consola Started");
    
    char input_buffer[BUFF_MAX_LENGTH];
    char input_sband_buff[BUFF_MAX_LENGTH];
    memset(input_buffer,0,BUFF_MAX_LENGTH);
    memset(input_sband_buff,0,BUFF_MAX_LENGTH);
    
    char cmd[CMD_LENGTH];
    char *mode="MODE";
    int param;
    //int rc;
    int CNSL_MODE=1;
    while(1){
        UART_RX1_STR(UARTRx1queue, input_buffer);
        UART_RX2_STR(UARTRx2queue, input_sband_buff);
        if(strlen(input_buffer)!=0 || strlen(input_sband_buff)!=0){
           // sscanf(input_buffer,"%s %d",cmd,&param);

            if(strcmp(cmd,mode)==0){
                CNSL_MODE=param;
                printf("MODE SET %d\n",CNSL_MODE);
                
                
                
            }
            else{
                switch(CNSL_MODE){
                case 1:
                    //UART_RX2_STR(UARTRx2queue, input_sband_buff);
                    
                    if(strlen(input_buffer)!=0){
                        Uart_Trx_test(input_buffer,strlen(input_buffer));
                        //printf("%d",strlen(input_buffer));
                    }
                    printf("%s",input_sband_buff);
                    memset(input_buffer,0,BUFF_MAX_LENGTH);
                    memset(input_sband_buff,0,BUFF_MAX_LENGTH);
                   
                    break;
                default:
                    printf(input_buffer);
                    printf("\n");
                    
            }
              
        }
        //printf("%d\n",IFS1bits.U2RXIF);
    }
memset(input_buffer,0,BUFF_MAX_LENGTH);  
}
}

void UART_RX1_STR(xQueueHandle UARTRx1queue, char * buffer ){
    char i=0;
    char new_char;
    portBASE_TYPE result = pdFALSE;
    while(1){
        result = xQueueReceive(UARTRx1queue, &new_char, 10/ portTICK_RATE_MS);
         //printf(new_char);
        if(result==pdPASS){
            *(buffer+i)=new_char;
             i++;
            if(i>=BUFF_MAX_LENGTH)
                break;
           
        }
        else
            break; 
    }
}
void UART_RX2_STR(xQueueHandle UARTRx2queue, char * buffer ){
    char i=0;
    char new_char;
    portBASE_TYPE result = pdFALSE;
    while(1){
        result = xQueueReceive(UARTRx2queue, &new_char, 50/ portTICK_RATE_MS);
        if(result==pdPASS){
            *(buffer+i)=new_char;
             i++;
            if(i>=BUFF_MAX_LENGTH)
                break;
           
        }
        else
            break; 
    }
}
