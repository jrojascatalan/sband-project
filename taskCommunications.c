
/*                                 SUCHAI
 *                      NANOSATELLITE FLIGHT SOFTWARE
 *
 *      Copyright 2020, Carlos Gonzalez Cortes, carlgonz@uchile.cl
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "taskCommunications.h"

extern xQueueHandle i2cRxQueue;

static void com_RxI2C(xQueueHandle i2c_rx_queue);


//static const char *tag = "Communications";

//static void com_receive_tc(csp_packet_t *packet);
//static void com_receive_cmd(csp_packet_t *packet);
//static void com_receive_tm(csp_packet_t *packet);

void vTaskCommunications(void *param)
{
    printf("Comm Started\n");
   // char test[5]="hola\n";
    int rc;

    /* Pointer to current connection, packet and socket */
    csp_conn_t *conn;
    csp_packet_t *packet;
    csp_packet_t *tmp_packet;
    csp_packet_t *rep_ok_tmp;
    csp_packet_t *rep_ok;

    csp_socket_t *sock = csp_socket(CSP_SO_NONE);
    if((rc = csp_bind(sock, CSP_ANY)) != CSP_ERR_NONE)
    {
       printf("Error biding socket (%d)!", rc);
        return;
    }
    if((rc = csp_listen(sock, CSP_SOCK_LEN)) != CSP_ERR_NONE)
    {
        printf("Error listening to socket (%d)", rc);
        return;
    }

    //rep_ok_tmp = csp_buffer_get(1);
    //rep_ok_tmp->data[0] = 200;
    //rep_ok_tmp->length = 1;

    while(1)
    {
        com_RxI2C(i2cRxQueue);
        //Uart_Trx_test(test,5);
        /* CSP SERVER */
        /* Wait for connection, 1000 ms timeout */
        if((conn = csp_accept(sock, 500)) == NULL)
            continue; /* Try again later */

        /* Read packets. Timeout is 500 ms */
        while ((packet = csp_read(conn, 500)) != NULL)
        {
            //count_tc = dat_get_system_var(dat_com_count_tc) + 1;
            //dat_set_system_var(dat_com_count_tc, count_tc);
           // dat_set_system_var(dat_com_last_tc, (int) time(NULL));

           // switch (csp_conn_dport(conn))
            if(csp_conn_dport(conn)>7)
            { 
               Uart_Trx_S(packet);
                
            }
            else if(csp_conn_dport(conn)==7){
                TRX_mode((char*)packet->data);
                
                //printf("Mode Set:%s\n",(char*)packet->data);
            
            }
                
            else{   /* Let the service handler reply pings, buffer use, etc. */
                    csp_service_handler(conn, packet);
                    //break;
            }
        }
        /* Close current connection, and handle next */
        csp_close(conn);
    }
}

/**
 * Parse TC frames and generates corresponding commands. A TC frame contains
 * a list of <command> [parameter] pairs separated by ";" (semicolon). For
 * example this is a valid TC frame:
 *
 *      "help;send_cmd 10 help;ping 1;print_vars"
 *
 * @param packet A csp buffer containing a null terminated string with the
 *               format <command> [parameters];<command> [parameters];...
 */


/**
 * Parse tc frame as console commands and execute the commands
 *
 * @param packet A csp buffer containing a null terminated string with the
 *               format <command> [parameters]
 */


/**
 * Process a TM frame, determine TM type and call corresponding parsing command
 * @param packet a csp buffer containing a com_frame_t structure.
 */

static void com_RxI2C(xQueueHandle i2c_rx_queue)
{
    static int nrcv = 0;
    static char new_data = 0;
    static i2c_frame_t *frame_p = NULL;
    static portBASE_TYPE result = pdFALSE;

    if(frame_p == NULL)
    {
        frame_p = (i2c_frame_t *) csp_buffer_get(I2C_MTU);
        frame_p->len = 0;
        nrcv = 0;
        return;
    }

    while(1) //Optimization, before: while(result == pdPASS)
    {
        result = xQueueReceive(i2c_rx_queue, &new_data, 50/ portTICK_RATE_MS);
        
        //No more data received
        if(result != pdPASS)
        {
            if(nrcv > 0)
            {
                frame_p->len = nrcv;
                csp_i2c_rx(frame_p, NULL);
                csp_buffer_free(frame_p);
                frame_p = NULL;
            }

            break; //Optimization, not conditional while exit
        }
        //New data received
        else
        {
            frame_p->data[nrcv] = (uint8_t)new_data;
            //printf("%d\n",new_data);
            nrcv++;
        }
    }
}


void TRX_mode(char* mode){
    char idle[3]="+++";
    char active[4]="ATA\r";
    printf("%s\n",mode);
    if(strncmp(mode,"IDLE",4)==0){
        _LATE5=0;
        //Uart_Trx_test(idle,3);
        printf("IdleMode\n");
    }
    else if(strncmp(mode,"ACTV",4)==0){
        _LATE5=1;
        //Uart_Trx_test(active,4);
        printf("Active mode\n");
    }
    else{
    printf("no data\n");
    }
}
