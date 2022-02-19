
#include "serial_comm.h"
#include "FreeRTOS.h"
#include "queue.h"

extern xQueueHandle UARTRx1queue;
extern xQueueHandle UARTRx2queue;

void serial_conf(){


// H1.17 - U1RX - RP10 - IO.7 - UART 1 PARA CONSOLA SERIAL
    iPPSInput(IN_FN_PPS_U1RX,IN_PIN_PPS_RP24);
    // H1.18 - U1TX - RP17 - IO.6 - UART 1 PARA CONSOLA SERIAL
    iPPSOutput(OUT_PIN_PPS_RP23,OUT_FN_PPS_U1TX);
    //iPPSOutput(OUT_PIN_PPS_RP17,OUT_FN_PPS_U1TX);
     ConfigRS232(16, RS2_M_UART1); 
     RS232EnableRxInterrupt(RS2_M_UART1);
 // Config puerto serie TRX
     iPPSInput(IN_FN_PPS_U2RX,IN_PIN_PPS_RP25);
     iPPSOutput(OUT_PIN_PPS_RP20,OUT_FN_PPS_U2TX);
     ConfigRS232(16, RS2_M_UART2);
     RS232EnableRxInterrupt(RS2_M_UART2);

}

void ConfigRS232(unsigned int abaud, unsigned int modulo){
 switch(modulo)
    {
        case RS2_M_UART1:

            /* LOS PUERTOS DE SALIDA DEBEN ESTAR MAPEADOS */

            CloseUART1();
            ConfigIntUART1(UART_RX_INT_DIS & UART_RX_INT_PR5 & UART_TX_INT_DIS & UART_TX_INT_PR0);
            OpenUART1(UART_EN & UART_IDLE_CON & UART_EN_WAKE & UART_DIS_LOOPBACK & UART_DIS_ABAUD & UART_NO_PAR_8BIT & UART_1STOPBIT & UART_IrDA_DISABLE & UART_MODE_SIMPLEX & UART_UEN_00 & UART_UXRX_IDLE_ONE & UART_BRGH_FOUR,
                      UART_INT_TX & UART_IrDA_POL_INV_ZERO & UART_SYNC_BREAK_DISABLED & UART_TX_ENABLE & UART_INT_RX_CHAR & UART_ADR_DETECT_DIS & UART_RX_OVERRUN_CLEAR,
                      abaud); /* abaud = FCY/(PS*BAUDRATE)-1 => 16MIPS/(16*19200bps)-1=51  */


            /*Fuerza el overflow para borrar los buffers*/
            U1MODEbits.LPBACK = 1;
            while(U1STAbits.OERR == 0){
                    while(U1STAbits.UTXBF);WriteUART1('\0');
            }
            U1STAbits.OERR = 0;
            U1MODEbits.LPBACK = 0; //no more loop back

        break;
        case RS2_M_UART2:

            /* LOS PUERTOS DE SALIDA DEBEN ESTAR MAPEADOS */

            CloseUART2();
            ConfigIntUART2(UART_RX_INT_DIS & UART_RX_INT_PR5 & UART_TX_INT_DIS & UART_TX_INT_PR0);
            OpenUART2(UART_EN & UART_IDLE_CON & UART_EN_WAKE & UART_DIS_LOOPBACK & UART_DIS_ABAUD & UART_NO_PAR_8BIT & UART_1STOPBIT & UART_IrDA_DISABLE & UART_MODE_SIMPLEX & UART_UEN_00 & UART_UXRX_IDLE_ONE & UART_BRGH_FOUR,
                      UART_INT_TX & UART_IrDA_POL_INV_ZERO & UART_SYNC_BREAK_DISABLED & UART_TX_ENABLE & UART_INT_RX_CHAR & UART_ADR_DETECT_DIS & UART_RX_OVERRUN_CLEAR,
                      abaud); /* abaud = FCY/(PS*BAUDRATE)-1 => 16MIPS/(16*19200bps)-1=51  */

            /*Fuerza el overflow para borrar los buffers*/
            U2MODEbits.LPBACK = 1;
            while(U2STAbits.OERR == 0){
                    while(U2STAbits.UTXBF);WriteUART2('\0');
            }
            U2STAbits.OERR = 0;
            U2MODEbits.LPBACK = 0; //no more loop back

        break;
    }
}

void RS232EnableRxInterrupt(unsigned int modulo){

         switch(modulo)
             {
        case RS2_M_UART1:
            ConfigIntUART1(UART_RX_INT_EN & UART_RX_INT_PR5 & UART_TX_INT_DIS
                            & UART_TX_INT_PR0);
            break;

        case RS2_M_UART2:
            ConfigIntUART2(UART_RX_INT_EN & UART_RX_INT_PR5 & UART_TX_INT_DIS
                            & UART_TX_INT_PR0);
            break;
}
}

void SendRS232(unsigned char* datos, unsigned int largo, unsigned int modulo){
    int i;
    for(i=0;i<largo;i++){
        while(U1STAbits.UTXBF);  /* wait if the buffer is full */
        WriteUART1(*(datos+i));
         }
}

unsigned int ReadRS232(unsigned int modulo)
{
    unsigned int data;
    switch(modulo){
        case RS2_M_UART1:
            data = ReadUART1();
        break;
        case RS2_M_UART2:
            data = ReadUART2();
        break;
        case RS2_M_UART3:
            data = ReadUART3();
        break;
        case RS2_M_UART4:
            data = ReadUART4();
        break;
    }
    return data;
}

void __attribute__((__interrupt__, auto_psv)) _U1RXInterrupt(void)
{
   
    char newchar = ReadRS232(RS2_M_UART1);
    portBASE_TYPE xHigherPriorityTaskWoken = pdFALSE;
    xQueueSendFromISR(UARTRx1queue, &newchar, &xHigherPriorityTaskWoken);


    IFS0bits.U1RXIF = 0;
}

void __attribute__((__interrupt__, auto_psv)) _U2RXInterrupt(void)
{
    char newchar = ReadRS232(RS2_M_UART2);
//            printf("%d\n",IFS1bits.U2RXIF);

    portBASE_TYPE xHigherPriorityTaskWoken = pdFALSE;
    xQueueSendFromISR(UARTRx2queue, &newchar, &xHigherPriorityTaskWoken);
    

    IFS1bits.U2RXIF = 0;
}

void Uart_Trx_S(csp_packet_t *packet){
    int i=0;
    char* data=(char *)packet->data;
    printf("(%d),%s",packet->length, packet->data);
    for(i=0;i<=(packet->length); i++){
        while(U2STAbits.UTXBF);
        putcUART2(*(data+i));
    }
    }
    
void Uart_Trx_test(char *packet, int size){
    int i=0;
    char* data=packet;
    
    for(i=0;i<(size);i++){
        while(U2STAbits.UTXBF);
        putcUART2(*(data+i));
        //printf("%s",(*(data+i)));
    }
}

void TRX_init(){
    char init[3]="+++";
    Uart_Trx_test(init,3);
}