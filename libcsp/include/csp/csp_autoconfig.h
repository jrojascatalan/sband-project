/* WARNING! All changes made to this file will be lost! */

#ifndef W_INCLUDE_CSP_CSP_AUTOCONFIG_H_WAF
#define W_INCLUDE_CSP_CSP_AUTOCONFIG_H_WAF

#define GIT_REV "2.4.1-6-g5865f87"
#define CSP_FREERTOS 1
/* #undef CSP_POSIX */
/* #undef CSP_WINDOWS */
/* #undef CSP_MACOSX */
#define CSP_DEBUG 1
#define CSP_USE_RDP 1
#define CSP_USE_CRC32 1
/* #undef CSP_USE_HMAC */
/* #undef CSP_USE_XTEA */
/* #undef CSP_USE_PROMISC */
/* #undef CSP_USE_QOS */
/* #undef CSP_USE_DEDUP */
/* #undef CSP_USE_INIT_SHUTDOWN */
/* define CSP_USE_CAN */
#define CSP_USE_I2C 1
/* #define CSP_USE_KISS 1 */
/* #undef CSP_USE_ZMQHUB */
#define CSP_CONN_MAX 10
#define CSP_CONN_QUEUE_LENGTH 100
#define CSP_FIFO_INPUT 100
#define CSP_MAX_BIND_PORT 31
#define CSP_RDP_MAX_WINDOW 20
#define CSP_PADDING_BYTES 8
#define CSP_CONNECTION_SO 64
#define CSP_LOG_LEVEL_DEBUG 1
#define CSP_LOG_LEVEL_INFO 1
#define CSP_LOG_LEVEL_WARN 1
#define CSP_LOG_LEVEL_ERROR 1
#define CSP_LITTLE_ENDIAN 1
/*#define CSP_BIG_ENDIAN 1*/
#define CSP_HAVE_STDBOOL_H 1
#define LIBCSP_VERSION "1.5"

#endif /* W_INCLUDE_CSP_CSP_AUTOCONFIG_H_WAF */
