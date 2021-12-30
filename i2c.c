#include "i2c.h"
#include <csp/interfaces/csp_if_i2c.h>
#include <stdio.h>
#include "i2c_comm.h"


int i2c_init(int handle, int mode, uint8_t addr, uint16_t speed, int queue_len_tx, int queue_len_rx, i2c_callback_t callback)
{
    unsigned int BRG = 0;
    switch(speed)
    {
        case 100:
            BRG = 157;
            break;
        case 400:
            BRG = 37;
            break;
        default:
            return CSP_ERR_DRIVER;
            break;
    }

    switch(handle)
    {
        case 0:
            i2c3_open(BRG, (char)addr);
            break;
        case 1:
//            i2c2_open(BRG, (char)addr);
            break;
        default:
            return CSP_ERR_DRIVER;
            break;
    }

    return E_NO_ERR;
}

int i2c_send(int handle, i2c_frame_t * frame, uint16_t timeout)
{
    if(handle != 0)
        return CSP_ERR_DRIVER;
    
    printf("To: %d. Size: %d. Data: ", frame->dest, frame->len);
    int i; 
    for(i=0; i<frame->len; i++) 
    printf("0x%X,", frame->data[i]); printf("\n");
    
    //Send frame via I2C1
    int total = i2c3_master_fputs((const char*)(frame->data), frame->len, (char *)&frame->dest, 1);
    //printf("hola\n");
    if(total == frame->len)
    {
#if 1
        printf("Success in I2C driver (%d of %d bytes transmited)\n", total, frame->len);
#endif
        return E_NO_ERR;
    }
    else
    {
#if 1
        printf("Error in I2C driver (%d of %d bytes transmited)\n", total, frame->len);
#endif
        return CSP_ERR_DRIVER;
    }
}
