#include "i2c_comm.h"

/**
 * Wait method selection. Uncomment only one define statement
 */
#define _I2C_BUSY_WAIT ///< Uses busy waiting without ISR
//#define _I2C_PWRS_WAIT ///< Uses IDLE mode waiting with ISR
//#define _I2C_RTOS_WAIT ///< **PENDIENT** Uses FreeRTOS semaphore syncronization with ISR

/**
 * Slave reception mode. Uncomment only one define statement
 */
//#define _I2C_SLAVE_BUFF ///< Uses buffer in ram to store recived data
#define _I2C_SLAVE_RTOS ///< Uses Queue to store slave recived data

#ifdef _I2C_SLAVE_RTOS
#include "FreeRTOS.h"
#include "queue.h"
#include "semphr.h"
#endif

#ifdef _I2C_SLAVE_BUFF
#define _I2C1_RCV_BUFF_LEN   16  ///< Slave recive buffer lenght
#define _I2C2_RCV_BUFF_LEN   16  ///< Slave recive buffer lenght
#define _I2C3_RCV_BUFF_LEN   16  ///< Slave recive buffer lenght

char I2C1_BUFF[_I2C1_RCV_BUFF_LEN]; ///< Salve data buffer
char I2C2_BUFF[_I2C2_RCV_BUFF_LEN]; ///< Salve data buffer
char I2C3_BUFF[_I2C3_RCV_BUFF_LEN]; ///< Salve data buffer
#endif
char P_flag=0;
i2c_frame_t *frame_p = NULL;

unsigned char counter=0;
//extern xQueueHandle i2cRxQueue;
//extern xQueueHandle i2cCounterQueue;
extern xSemaphoreHandle i2csem;

//Static functions
static void i2c_master_wait(int device);
static int i2c_master_wait_and_check(int device, int check_ack);
static int i2c_check_ack(int device);
static int i2c_check_bus_collision(int device);
static void i2c3_slave_putc(char data);
static char i2c3_slave_getc(void);
//static void i2c3_sendcounter(unsigned char data);



int i2c1_slave_address = 0;      ///< Salve r/w selected address
int i2c2_slave_address = 0;      ///< Salve r/w selected address
int i2c3_slave_address = 0;      ///< Salve r/w selected address

int I2C1_SLAVE_ST = I2C_SLV_IDLE;
int I2C2_SLAVE_ST = I2C_SLV_IDLE;
int I2C3_SLAVE_ST = I2C_SLV_IDLE;
void i2c3_open(unsigned int BRG, char address)
{
#ifndef _I2C_RTOS_WAIT
    ConfigIntI2C3(MI2C_INT_OFF & MI2C_INT_PRI_0 & SI2C_INT_ON & SI2C_INT_PRI_5); /* Software mode state trantition */
#else
    ConfigIntI2C3(MI2C_INT_ON & MI2C_INT_PRI_6 & SI2C_INT_ON & SI2C_INT_PRI_5); /* Interrupt mode state trantition */
#endif

    OpenI2C3(I2C_ON & I2C_IDLE_CON & I2C_CLK_HLD & I2C_IPMI_DIS & I2C_7BIT_ADD &
            I2C_SLW_EN & I2C_SM_DIS & I2C_GCALL_DIS & I2C_STR_EN & I2C_ACK &
            I2C_ACK_DIS & I2C_RCV_DIS & I2C_STOP_DIS & I2C_RESTART_DIS & I2C_START_DIS,
            BRG) ; /* BRG according to I2C Clock Rate table*/

    I2C3ADD = (unsigned int)address;
    printf("Add:%d\n",I2C3ADD);
}

int i2c3_slave_ready(char address, long timeout)
{
    register int ok = 0;
    char w_address = address<<1;                //Address+W

    while((ok == 0) && (timeout > 0))
    {
        timeout--;
        //Waits while bus is busy
        IdleI2C3();

        //Init session sending Start condition
        StartI2C3();
        ok = i2c_master_wait_and_check(I2C_MOD3, 0);   //Wait op. ends and check errors
        if(!ok) continue;                              //Return in error

        //Send device address
        MasterWriteI2C3(w_address);
        ok = i2c_master_wait_and_check(I2C_MOD3, 1);
        if(!ok) continue;
    }

    if(ok)
    {
        StopI2C3();
        i2c_master_wait_and_check(I2C_MOD3, 0);
    }

    return ok;
}

int i2c3_master_fputs(const char *data, int len, char *address, int addlen)
{
    register int ok = 0;
    register int count = 0;
    char w_address = address[0]<<1;                //Address+W

    //Waits while bus is busy
    IdleI2C3();
    //Init session sending Start condition
    StartI2C3();
    ok = i2c_master_wait_and_check(I2C_MOD3, 0);   //Wait op. ends and check errors

    if(!ok) return count;                          //Return in error

    //Send device address
    MasterWriteI2C3(w_address);
    ok = i2c_master_wait_and_check(I2C_MOD3, 1);
    //printf("hola:%d\n",ok);

    if(!ok) return count;
    //Send byte address
    for(int i=1; i<addlen; i++)
    {
        MasterWriteI2C3(address[i]);
        ok = i2c_master_wait_and_check(I2C_MOD3, 1);
        if(!ok) return 0;
    }

    //Start sending data
    for(count=0; count<len; count++)
    {
        MasterWriteI2C3(data[count]);
        ok = i2c_master_wait_and_check(I2C_MOD3, 1);
        if(!ok) return count;
    }

    //Close session sending stop condition
    StopI2C3();
    i2c_master_wait_and_check(I2C_MOD3, 0);
    
    return count;
}

int i2c3_master_fgets(char *data, int len, char *address, int addlen)
{
    //STEP1 -> Set read direcction
    register int ok = 0;
    register int count = 0;
    char w_address = address[0]<<1;                //Address+W
    char r_address = w_address+1;                  //Address+R

    //Waits while bus is busy
    IdleI2C3();

    //Init session sending Start condition
    StartI2C3();
    
    ok = i2c_master_wait_and_check(I2C_MOD3, 0);   //Wait op. ends and check errors
    if(!ok) return count;                       //Return in error

    //Send device address
    MasterWriteI2C3(w_address);
    ok = i2c_master_wait_and_check(I2C_MOD3, 1);
    if(!ok) return count;

    //Send byte address
    for(count=1; count<addlen; count++)
    {
        MasterWriteI2C3(address[count]);
        ok = i2c_master_wait_and_check(I2C_MOD3, 1);
        if(!ok) return 0;
    }

    //STEP2 -> Start reception
    RestartI2C3();
    ok = i2c_master_wait_and_check(I2C_MOD3, 0);
    if(!ok) return 0;

//    printf("i2c3_slave_address %d\n", i2c3_slave_address);

    MasterWriteI2C3(r_address); //Address + W
    ok = i2c_master_wait_and_check(I2C_MOD3, 1);
    if(!ok) return 0;

    register int last = len-1;
    for(count=0; count<len; count++)
    {
        I2C3CONbits.RCEN = 1; //Start reception
        ok = i2c_master_wait_and_check(I2C_MOD3, 0); //Wait 8 clocks
        if(!ok) return count;

        if(count < last) AckI2C3(); //Send ACK
        else NotAckI2C3(); //Not ACK and ends operation

        char new_data = (char)I2C3RCV;
//        printf("i2c3 fgets %c\n", new_data);
        data[count] = new_data; //Read received byte
        I2C3STATbits.I2COV = 0; //Clear overflow flag

        ok = i2c_master_wait_and_check(I2C_MOD3, 0); //Wait ack ends
        if(!ok) return count;
    }

    //Close session sending stop condition
    StopI2C3();
    i2c_master_wait_and_check(I2C_MOD3, 0);

    return count;
}

void __attribute__((__interrupt__, auto_psv)) _MI2C3Interrupt(void)
{
    MI2C3_Clear_Intr_Status_Bit;

#ifdef _I2C_RTOS_WAIT
#endif

#ifdef _I2C_PWRS_WAIT
#endif

#ifdef _I2C_BUSY_WAIT
#endif
}


static int i2c_master_wait_and_check(int device, int check_ack)
{
    int error;
    //printf("error:%d\n",error);
    i2c_master_wait(device);                  //Wait for stage completion
    //printf("Firswait\n");
    error = i2c_check_bus_collision(device);  //Check if bus collision occurred
    
    if(check_ack) error = error || (!i2c_check_ack(device));   //Check ACK

    if(error)                                   //Send stop condition in error
    {
        switch(device){

            case I2C_MOD3:
                StopI2C3();
                break;
        }

        i2c_master_wait(device);
        return 0;                               //In error return 0
    }

    return 1;                                   //If not return 1
}

static int i2c_check_ack(int device)
{
    int n_ack; //I2C module uses negative logic for ACK

    switch (device)
    {
      
        case I2C_MOD3:
            n_ack = I2C3STATbits.ACKSTAT;
            break;
        default:
            n_ack = 1;
            break;
    }

    return !n_ack; //Return using positive logic
}
static void i2c_master_wait(int device)
{
#ifdef _I2C_RTOS_WAIT
#endif

#ifdef _I2C_PWRS_WAIT
{
    switch (device)
    {
        
        case I2C_MOD3:
            while(0 == IFS1bits.MI2C3IF){Idle();}
            IFS1bits.MI2C3IF = 0;
            break;
        default:
            break;
    }

    return;
}
#endif

#ifdef _I2C_BUSY_WAIT
{
    switch (device)
    {
       
        case I2C_MOD3:
            MasterWaitForIntrI2C3();
            break;
        default:
            break;
    }

    return;
}
#endif
}

static int i2c_check_bus_collision(int device)
{
    int iwcol_flag;

    //Reads and clear IWCOL status bit
    switch(device)
    {
       
        case I2C_MOD3:
            iwcol_flag = I2C3STATbits.IWCOL;
            I2C3STATbits.IWCOL = 0;
            break;
        default:
            break;
    }

    return iwcol_flag;
}



void __attribute__((__interrupt__, auto_psv)) _SI2C3Interrupt(void)
{
    SI2C3_Clear_Intr_Status_Bit;

    I2C3STATbits.I2COV = 0;
    char data = (char)I2C3RCV;
    
    if(I2C3STATbits.D_A == 0)
    {
        if(I2C3STATbits.R_W == 0){ //Write
        #ifdef _I2C_SLAVE_RTOS
          counter=0;
          I2C3_SLAVE_ST = I2C_SLV_WRITE;
          frame_p = (i2c_frame_t *) csp_buffer_get_isr(I2C_MTU);
              //     if(counter!=0){
         // printf("%d\n",counter);
          //i2c3_sendcounter(counter);
            //       }
        #else
          I2C3_SLAVE_ST = I2C_SLV_W_ADDR; 
        #endif

        }
        else
            I2C3_SLAVE_ST = I2C_SLV_READ;

        I2C3CONbits.SCLREL = 1;
        return;
    }
      
    switch(I2C3_SLAVE_ST)
    {
        case I2C_SLV_W_ADDR:
            i2c3_slave_address = data;
            I2C3_SLAVE_ST = I2C_SLV_WRITE;
            break;
        case I2C_SLV_WRITE:
            frame_p->data[counter] = (uint8_t)data;
            i2c3_slave_address++;
            counter++;
            
            break;
        case I2C_SLV_READ:
//            I2C3TRN = (unsigned int)i2c3_slave_getc();
            i2c3_slave_address++;
            break;
        default:
            break;
    }
   
    I2C3CONbits.SCLREL = 1;  
    i2c3_slave_putc(data);
}
static void i2c3_slave_putc(char data)
{
#ifdef _I2C_SLAVE_RTOS
    portBASE_TYPE xHigherPriorityTaskWoken = pdFALSE;
    xSemaphoreGiveFromISR(i2csem,&xHigherPriorityTaskWoken);
    //xQueueSendFromISR(i2cRxQueue, &data, &xHigherPriorityTaskWoken);   
    //portEND_SWITCHING_ISR(xHigherPriorityTaskWoken);
    
#endif

#ifdef _I2C_SLAVE_BUFF
    if(i2c3_slave_address < _I2C3_RCV_BUFF_LEN)
        I2C3_BUFF[i2c3_slave_address] = data;
#endif
}

static char i2c3_slave_getc(void)
{
#ifdef _I2C_SLAVE_RTOS
    return 0;
#endif

#ifdef _I2C_SLAVE_BUFF
    if(i2c3_slave_address < _I2C3_RCV_BUFF_LEN)
        return I2C3_BUFF[i2c3_slave_address];
    else
        return 0;
#endif
}

