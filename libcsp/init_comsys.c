
#include "config.h"
#include <csp/csp.h>
#include <csp/interfaces/csp_if_i2c.h>




int setup_libcsp(void){
    csp_debug_set_level(CSP_ERROR, 1);
    csp_debug_set_level(CSP_WARN, 1);
    csp_debug_set_level(CSP_INFO, 1);
    csp_debug_set_level(CSP_BUFFER, 1);
    csp_debug_set_level(CSP_PACKET, 1);
    csp_debug_set_level(CSP_PROTOCOL, 1);
    csp_debug_set_level(CSP_LOCK, 0);
    
    
    int t_ok;
    
    t_ok = csp_buffer_init(10, 256);
    printf("buffer init:%d\n",t_ok);
    
    csp_set_hostname(SBAND_NAME);
    printf("Host name:%s\n",SBAND_NAME);
    
    csp_init(S_COMM_ADDRESS); // Init CSP with address MY_ADDRESS
    printf("CSP_addres:%d\n",S_COMM_ADDRESS);
    
    t_ok = csp_i2c_init(S_COMM_ADDRESS, 0, 400);
    printf("csp init:%d\n",t_ok);
    
//    t_ok=csp_rtable_set(8, 2, &csp_if_i2c, TRX_SUCHAI); // Traffic to GND (8-15) via I2C node TRX
 //   printf("csp rtable set:%d\n",t_ok);
    
    t_ok=csp_route_set(CSP_DEFAULT_ROUTE, &csp_if_i2c, CSP_NODE_MAC); // All traffic to I2C using node as i2c address
    printf("csp default table set:%d\n",t_ok);
        
    t_ok = csp_route_start_task(500, 1);    
    //csp_route_print_table();    
    //csp_route_print_interfaces();
    return 0;
}