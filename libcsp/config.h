/* 
 * File:   config.h
 * Author: root
 *
 * Created on 14 de mayo de 2021, 14:20
 */

#ifndef CONFIG_H
#define	CONFIG_H

#include <stdlib.h>
#include <stdio.h>
#include <limits.h>
#include <string.h>



#ifdef	__cplusplus
extern "C" {
#endif
    
/*configurción de la Libcsp*/
#define SBAND_NAME                "SBAND-DEV"
#define S_COMM_ADDRESS        17  ///< Node address
#define TRX_PORT_TC         (10)  
#define BUFF_MAX_LEN          (256)     ///< General buffers max length in bytes
#define BUFFERS_CSP           (100)     ///< Number of available CSP buffers
#define CSP_SOCK_LEN          (100)     ///< Max number of packets in a connection queue
#define TRX_SUCHAI              5
    
/*Configuración TRX*/

    
int setup_libcsp(void);



#endif	/* CONFIG_H */

