#include <stdio.h>
#include "task_test.h"
#include <csp/csp.h>

void vTaskPing(void *pvParameters){
   //BaseType_t xStatus;
   TickType_t xLastWakeTime;
   xLastWakeTime=xTaskGetTickCount();
   int rc;
   
   while(1){
         vTaskDelayUntil(&xLastWakeTime, pdMS_TO_TICKS(50000));
         printf("ping to 3\n");
         rc=csp_ping(16,3000,10,CSP_O_NONE);
         printf("csp ping took=%d ticks\n", rc);
      }
}    
    

void vTaskBlink(void *pvParameters){

   //BaseType_t xStatus;
   TickType_t xLastWakeTime;
   xLastWakeTime=xTaskGetTickCount();

   while(1){
         vTaskDelayUntil(&xLastWakeTime, 2000/portTICK_RATE_MS);
         _LATE6=!_LATE6;
      }
}

void vTaskPrint(void *pvParameters){
TickType_t xLastWakeTime;
xLastWakeTime=xTaskGetTickCount();
 while(1){
         vTaskDelayUntil(&xLastWakeTime, (1000)/portTICK_RATE_MS);
         printf("hola\n");
      }
}