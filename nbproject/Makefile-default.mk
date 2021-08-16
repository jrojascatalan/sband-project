#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SbandTRX.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SbandTRX.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=/home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/Portable/port.c /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/Portable/portasm_PIC24.S /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/heap_1.c /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/list.c /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/queue.c /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/tasks.c libcsp/src/arch/freertos/csp_queue.c libcsp/src/arch/freertos/csp_semaphore.c libcsp/src/arch/freertos/csp_system.c libcsp/src/arch/freertos/csp_malloc.c libcsp/src/arch/freertos/csp_time.c libcsp/src/arch/freertos/csp_thread.c libcsp/src/crypto/csp_hmac.c libcsp/src/crypto/csp_sha1.c libcsp/src/crypto/csp_xtea.c libcsp/src/interfaces/csp_if_lo.c libcsp/src/interfaces/csp_if_i2c.c libcsp/src/rtable/csp_rtable_static.c libcsp/src/transport/csp_udp.c libcsp/src/transport/csp_rdp.c libcsp/src/csp_buffer.c libcsp/src/csp_sfp.c libcsp/src/csp_qfifo.c libcsp/src/csp_endian.c libcsp/src/csp_conn.c libcsp/src/csp_iflist.c libcsp/src/csp_services.c libcsp/src/csp_route.c libcsp/src/csp_port.c libcsp/src/csp_crc32.c libcsp/src/csp_promisc.c libcsp/src/csp_service_handler.c libcsp/src/csp_io.c libcsp/src/csp_dedup.c libcsp/src/csp_bridge.c libcsp/src/csp_hex_dump.c libcsp/src/csp_debug.c main.c task_test.c pic_config.c serial_comm.c i2c_comm.c i2c.c /home/javier/MPLABXProjects/SbandTRX/taskCommunications.c /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c /home/javier/MPLABXProjects/SbandTRX/taskConsola.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1784220007/port.o ${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o ${OBJECTDIR}/_ext/642107555/heap_1.o ${OBJECTDIR}/_ext/642107555/list.o ${OBJECTDIR}/_ext/642107555/queue.o ${OBJECTDIR}/_ext/642107555/tasks.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o ${OBJECTDIR}/libcsp/src/transport/csp_udp.o ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o ${OBJECTDIR}/libcsp/src/csp_buffer.o ${OBJECTDIR}/libcsp/src/csp_sfp.o ${OBJECTDIR}/libcsp/src/csp_qfifo.o ${OBJECTDIR}/libcsp/src/csp_endian.o ${OBJECTDIR}/libcsp/src/csp_conn.o ${OBJECTDIR}/libcsp/src/csp_iflist.o ${OBJECTDIR}/libcsp/src/csp_services.o ${OBJECTDIR}/libcsp/src/csp_route.o ${OBJECTDIR}/libcsp/src/csp_port.o ${OBJECTDIR}/libcsp/src/csp_crc32.o ${OBJECTDIR}/libcsp/src/csp_promisc.o ${OBJECTDIR}/libcsp/src/csp_service_handler.o ${OBJECTDIR}/libcsp/src/csp_io.o ${OBJECTDIR}/libcsp/src/csp_dedup.o ${OBJECTDIR}/libcsp/src/csp_bridge.o ${OBJECTDIR}/libcsp/src/csp_hex_dump.o ${OBJECTDIR}/libcsp/src/csp_debug.o ${OBJECTDIR}/main.o ${OBJECTDIR}/task_test.o ${OBJECTDIR}/pic_config.o ${OBJECTDIR}/serial_comm.o ${OBJECTDIR}/i2c_comm.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/_ext/742537886/taskCommunications.o ${OBJECTDIR}/_ext/1843642024/init_comsys.o ${OBJECTDIR}/_ext/742537886/taskConsola.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1784220007/port.o.d ${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o.d ${OBJECTDIR}/_ext/642107555/heap_1.o.d ${OBJECTDIR}/_ext/642107555/list.o.d ${OBJECTDIR}/_ext/642107555/queue.o.d ${OBJECTDIR}/_ext/642107555/tasks.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d ${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d ${OBJECTDIR}/libcsp/src/csp_buffer.o.d ${OBJECTDIR}/libcsp/src/csp_sfp.o.d ${OBJECTDIR}/libcsp/src/csp_qfifo.o.d ${OBJECTDIR}/libcsp/src/csp_endian.o.d ${OBJECTDIR}/libcsp/src/csp_conn.o.d ${OBJECTDIR}/libcsp/src/csp_iflist.o.d ${OBJECTDIR}/libcsp/src/csp_services.o.d ${OBJECTDIR}/libcsp/src/csp_route.o.d ${OBJECTDIR}/libcsp/src/csp_port.o.d ${OBJECTDIR}/libcsp/src/csp_crc32.o.d ${OBJECTDIR}/libcsp/src/csp_promisc.o.d ${OBJECTDIR}/libcsp/src/csp_service_handler.o.d ${OBJECTDIR}/libcsp/src/csp_io.o.d ${OBJECTDIR}/libcsp/src/csp_dedup.o.d ${OBJECTDIR}/libcsp/src/csp_bridge.o.d ${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d ${OBJECTDIR}/libcsp/src/csp_debug.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/task_test.o.d ${OBJECTDIR}/pic_config.o.d ${OBJECTDIR}/serial_comm.o.d ${OBJECTDIR}/i2c_comm.o.d ${OBJECTDIR}/i2c.o.d ${OBJECTDIR}/_ext/742537886/taskCommunications.o.d ${OBJECTDIR}/_ext/1843642024/init_comsys.o.d ${OBJECTDIR}/_ext/742537886/taskConsola.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1784220007/port.o ${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o ${OBJECTDIR}/_ext/642107555/heap_1.o ${OBJECTDIR}/_ext/642107555/list.o ${OBJECTDIR}/_ext/642107555/queue.o ${OBJECTDIR}/_ext/642107555/tasks.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o ${OBJECTDIR}/libcsp/src/transport/csp_udp.o ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o ${OBJECTDIR}/libcsp/src/csp_buffer.o ${OBJECTDIR}/libcsp/src/csp_sfp.o ${OBJECTDIR}/libcsp/src/csp_qfifo.o ${OBJECTDIR}/libcsp/src/csp_endian.o ${OBJECTDIR}/libcsp/src/csp_conn.o ${OBJECTDIR}/libcsp/src/csp_iflist.o ${OBJECTDIR}/libcsp/src/csp_services.o ${OBJECTDIR}/libcsp/src/csp_route.o ${OBJECTDIR}/libcsp/src/csp_port.o ${OBJECTDIR}/libcsp/src/csp_crc32.o ${OBJECTDIR}/libcsp/src/csp_promisc.o ${OBJECTDIR}/libcsp/src/csp_service_handler.o ${OBJECTDIR}/libcsp/src/csp_io.o ${OBJECTDIR}/libcsp/src/csp_dedup.o ${OBJECTDIR}/libcsp/src/csp_bridge.o ${OBJECTDIR}/libcsp/src/csp_hex_dump.o ${OBJECTDIR}/libcsp/src/csp_debug.o ${OBJECTDIR}/main.o ${OBJECTDIR}/task_test.o ${OBJECTDIR}/pic_config.o ${OBJECTDIR}/serial_comm.o ${OBJECTDIR}/i2c_comm.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/_ext/742537886/taskCommunications.o ${OBJECTDIR}/_ext/1843642024/init_comsys.o ${OBJECTDIR}/_ext/742537886/taskConsola.o

# Source Files
SOURCEFILES=/home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/Portable/port.c /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/Portable/portasm_PIC24.S /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/heap_1.c /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/list.c /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/queue.c /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/tasks.c libcsp/src/arch/freertos/csp_queue.c libcsp/src/arch/freertos/csp_semaphore.c libcsp/src/arch/freertos/csp_system.c libcsp/src/arch/freertos/csp_malloc.c libcsp/src/arch/freertos/csp_time.c libcsp/src/arch/freertos/csp_thread.c libcsp/src/crypto/csp_hmac.c libcsp/src/crypto/csp_sha1.c libcsp/src/crypto/csp_xtea.c libcsp/src/interfaces/csp_if_lo.c libcsp/src/interfaces/csp_if_i2c.c libcsp/src/rtable/csp_rtable_static.c libcsp/src/transport/csp_udp.c libcsp/src/transport/csp_rdp.c libcsp/src/csp_buffer.c libcsp/src/csp_sfp.c libcsp/src/csp_qfifo.c libcsp/src/csp_endian.c libcsp/src/csp_conn.c libcsp/src/csp_iflist.c libcsp/src/csp_services.c libcsp/src/csp_route.c libcsp/src/csp_port.c libcsp/src/csp_crc32.c libcsp/src/csp_promisc.c libcsp/src/csp_service_handler.c libcsp/src/csp_io.c libcsp/src/csp_dedup.c libcsp/src/csp_bridge.c libcsp/src/csp_hex_dump.c libcsp/src/csp_debug.c main.c task_test.c pic_config.c serial_comm.c i2c_comm.c i2c.c /home/javier/MPLABXProjects/SbandTRX/taskCommunications.c /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c /home/javier/MPLABXProjects/SbandTRX/taskConsola.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/SbandTRX.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GB106
MP_LINKER_FILE_OPTION=,--script=p24FJ256GB106.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1784220007/port.o: /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/Portable/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784220007" 
	@${RM} ${OBJECTDIR}/_ext/1784220007/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784220007/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/Portable/port.c  -o ${OBJECTDIR}/_ext/1784220007/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1784220007/port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784220007/port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/642107555/heap_1.o: /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/642107555" 
	@${RM} ${OBJECTDIR}/_ext/642107555/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/642107555/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/heap_1.c  -o ${OBJECTDIR}/_ext/642107555/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/642107555/heap_1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/642107555/heap_1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/642107555/list.o: /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/642107555" 
	@${RM} ${OBJECTDIR}/_ext/642107555/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/642107555/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/list.c  -o ${OBJECTDIR}/_ext/642107555/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/642107555/list.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/642107555/list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/642107555/queue.o: /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/642107555" 
	@${RM} ${OBJECTDIR}/_ext/642107555/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/642107555/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/queue.c  -o ${OBJECTDIR}/_ext/642107555/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/642107555/queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/642107555/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/642107555/tasks.o: /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/642107555" 
	@${RM} ${OBJECTDIR}/_ext/642107555/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/642107555/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/tasks.c  -o ${OBJECTDIR}/_ext/642107555/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/642107555/tasks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/642107555/tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o: libcsp/src/arch/freertos/csp_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_queue.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o: libcsp/src/arch/freertos/csp_semaphore.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_semaphore.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o: libcsp/src/arch/freertos/csp_system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_system.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o: libcsp/src/arch/freertos/csp_malloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_malloc.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o: libcsp/src/arch/freertos/csp_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_time.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o: libcsp/src/arch/freertos/csp_thread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_thread.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o: libcsp/src/crypto/csp_hmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_hmac.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o: libcsp/src/crypto/csp_sha1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_sha1.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o: libcsp/src/crypto/csp_xtea.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_xtea.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o: libcsp/src/interfaces/csp_if_lo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/interfaces" 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/interfaces/csp_if_lo.c  -o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o: libcsp/src/interfaces/csp_if_i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/interfaces" 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/interfaces/csp_if_i2c.c  -o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o: libcsp/src/rtable/csp_rtable_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/rtable" 
	@${RM} ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/rtable/csp_rtable_static.c  -o ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/transport/csp_udp.o: libcsp/src/transport/csp_udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/transport" 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_udp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/transport/csp_udp.c  -o ${OBJECTDIR}/libcsp/src/transport/csp_udp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/transport/csp_rdp.o: libcsp/src/transport/csp_rdp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/transport" 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/transport/csp_rdp.c  -o ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_buffer.o: libcsp/src/csp_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_buffer.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_buffer.c  -o ${OBJECTDIR}/libcsp/src/csp_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_buffer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_buffer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_sfp.o: libcsp/src/csp_sfp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_sfp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_sfp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_sfp.c  -o ${OBJECTDIR}/libcsp/src/csp_sfp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_sfp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_sfp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_qfifo.o: libcsp/src/csp_qfifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_qfifo.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_qfifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_qfifo.c  -o ${OBJECTDIR}/libcsp/src/csp_qfifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_qfifo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_qfifo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_endian.o: libcsp/src/csp_endian.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_endian.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_endian.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_endian.c  -o ${OBJECTDIR}/libcsp/src/csp_endian.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_endian.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_endian.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_conn.o: libcsp/src/csp_conn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_conn.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_conn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_conn.c  -o ${OBJECTDIR}/libcsp/src/csp_conn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_conn.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_conn.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_iflist.o: libcsp/src/csp_iflist.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_iflist.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_iflist.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_iflist.c  -o ${OBJECTDIR}/libcsp/src/csp_iflist.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_iflist.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_iflist.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_services.o: libcsp/src/csp_services.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_services.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_services.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_services.c  -o ${OBJECTDIR}/libcsp/src/csp_services.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_services.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_services.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_route.o: libcsp/src/csp_route.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_route.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_route.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_route.c  -o ${OBJECTDIR}/libcsp/src/csp_route.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_route.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_route.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_port.o: libcsp/src/csp_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_port.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_port.c  -o ${OBJECTDIR}/libcsp/src/csp_port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_crc32.o: libcsp/src/csp_crc32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_crc32.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_crc32.c  -o ${OBJECTDIR}/libcsp/src/csp_crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_crc32.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_crc32.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_promisc.o: libcsp/src/csp_promisc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_promisc.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_promisc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_promisc.c  -o ${OBJECTDIR}/libcsp/src/csp_promisc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_promisc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_promisc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_service_handler.o: libcsp/src/csp_service_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_service_handler.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_service_handler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_service_handler.c  -o ${OBJECTDIR}/libcsp/src/csp_service_handler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_service_handler.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_service_handler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_io.o: libcsp/src/csp_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_io.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_io.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_io.c  -o ${OBJECTDIR}/libcsp/src/csp_io.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_io.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_io.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_dedup.o: libcsp/src/csp_dedup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_dedup.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_dedup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_dedup.c  -o ${OBJECTDIR}/libcsp/src/csp_dedup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_dedup.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_dedup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_bridge.o: libcsp/src/csp_bridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_bridge.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_bridge.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_bridge.c  -o ${OBJECTDIR}/libcsp/src/csp_bridge.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_bridge.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_bridge.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_hex_dump.o: libcsp/src/csp_hex_dump.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_hex_dump.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_hex_dump.c  -o ${OBJECTDIR}/libcsp/src/csp_hex_dump.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_debug.o: libcsp/src/csp_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_debug.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_debug.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_debug.c  -o ${OBJECTDIR}/libcsp/src/csp_debug.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_debug.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_debug.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/task_test.o: task_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/task_test.o.d 
	@${RM} ${OBJECTDIR}/task_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  task_test.c  -o ${OBJECTDIR}/task_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/task_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/task_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/pic_config.o: pic_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pic_config.o.d 
	@${RM} ${OBJECTDIR}/pic_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  pic_config.c  -o ${OBJECTDIR}/pic_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/pic_config.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/pic_config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/serial_comm.o: serial_comm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial_comm.o.d 
	@${RM} ${OBJECTDIR}/serial_comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  serial_comm.c  -o ${OBJECTDIR}/serial_comm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/serial_comm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/serial_comm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/i2c_comm.o: i2c_comm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_comm.o.d 
	@${RM} ${OBJECTDIR}/i2c_comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  i2c_comm.c  -o ${OBJECTDIR}/i2c_comm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/i2c_comm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/i2c_comm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/i2c.o: i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.o.d 
	@${RM} ${OBJECTDIR}/i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  i2c.c  -o ${OBJECTDIR}/i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/i2c.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/i2c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/742537886/taskCommunications.o: /home/javier/MPLABXProjects/SbandTRX/taskCommunications.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/742537886" 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskCommunications.o.d 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskCommunications.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/taskCommunications.c  -o ${OBJECTDIR}/_ext/742537886/taskCommunications.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/742537886/taskCommunications.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/742537886/taskCommunications.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1843642024/init_comsys.o: /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1843642024" 
	@${RM} ${OBJECTDIR}/_ext/1843642024/init_comsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843642024/init_comsys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c  -o ${OBJECTDIR}/_ext/1843642024/init_comsys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1843642024/init_comsys.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843642024/init_comsys.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/742537886/taskConsola.o: /home/javier/MPLABXProjects/SbandTRX/taskConsola.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/742537886" 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskConsola.o.d 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskConsola.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/taskConsola.c  -o ${OBJECTDIR}/_ext/742537886/taskConsola.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/742537886/taskConsola.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/742537886/taskConsola.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1784220007/port.o: /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/Portable/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784220007" 
	@${RM} ${OBJECTDIR}/_ext/1784220007/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784220007/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/Portable/port.c  -o ${OBJECTDIR}/_ext/1784220007/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1784220007/port.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784220007/port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/642107555/heap_1.o: /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/642107555" 
	@${RM} ${OBJECTDIR}/_ext/642107555/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/642107555/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/heap_1.c  -o ${OBJECTDIR}/_ext/642107555/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/642107555/heap_1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/642107555/heap_1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/642107555/list.o: /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/642107555" 
	@${RM} ${OBJECTDIR}/_ext/642107555/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/642107555/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/list.c  -o ${OBJECTDIR}/_ext/642107555/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/642107555/list.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/642107555/list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/642107555/queue.o: /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/642107555" 
	@${RM} ${OBJECTDIR}/_ext/642107555/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/642107555/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/queue.c  -o ${OBJECTDIR}/_ext/642107555/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/642107555/queue.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/642107555/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/642107555/tasks.o: /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/642107555" 
	@${RM} ${OBJECTDIR}/_ext/642107555/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/642107555/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/tasks.c  -o ${OBJECTDIR}/_ext/642107555/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/642107555/tasks.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/642107555/tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o: libcsp/src/arch/freertos/csp_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_queue.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o: libcsp/src/arch/freertos/csp_semaphore.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_semaphore.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o: libcsp/src/arch/freertos/csp_system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_system.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o: libcsp/src/arch/freertos/csp_malloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_malloc.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o: libcsp/src/arch/freertos/csp_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_time.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o: libcsp/src/arch/freertos/csp_thread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_thread.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o: libcsp/src/crypto/csp_hmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_hmac.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o: libcsp/src/crypto/csp_sha1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_sha1.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o: libcsp/src/crypto/csp_xtea.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_xtea.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o: libcsp/src/interfaces/csp_if_lo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/interfaces" 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/interfaces/csp_if_lo.c  -o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o: libcsp/src/interfaces/csp_if_i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/interfaces" 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/interfaces/csp_if_i2c.c  -o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o: libcsp/src/rtable/csp_rtable_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/rtable" 
	@${RM} ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/rtable/csp_rtable_static.c  -o ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/transport/csp_udp.o: libcsp/src/transport/csp_udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/transport" 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_udp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/transport/csp_udp.c  -o ${OBJECTDIR}/libcsp/src/transport/csp_udp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/transport/csp_rdp.o: libcsp/src/transport/csp_rdp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src/transport" 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/transport/csp_rdp.c  -o ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_buffer.o: libcsp/src/csp_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_buffer.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_buffer.c  -o ${OBJECTDIR}/libcsp/src/csp_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_buffer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_buffer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_sfp.o: libcsp/src/csp_sfp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_sfp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_sfp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_sfp.c  -o ${OBJECTDIR}/libcsp/src/csp_sfp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_sfp.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_sfp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_qfifo.o: libcsp/src/csp_qfifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_qfifo.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_qfifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_qfifo.c  -o ${OBJECTDIR}/libcsp/src/csp_qfifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_qfifo.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_qfifo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_endian.o: libcsp/src/csp_endian.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_endian.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_endian.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_endian.c  -o ${OBJECTDIR}/libcsp/src/csp_endian.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_endian.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_endian.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_conn.o: libcsp/src/csp_conn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_conn.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_conn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_conn.c  -o ${OBJECTDIR}/libcsp/src/csp_conn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_conn.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_conn.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_iflist.o: libcsp/src/csp_iflist.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_iflist.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_iflist.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_iflist.c  -o ${OBJECTDIR}/libcsp/src/csp_iflist.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_iflist.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_iflist.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_services.o: libcsp/src/csp_services.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_services.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_services.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_services.c  -o ${OBJECTDIR}/libcsp/src/csp_services.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_services.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_services.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_route.o: libcsp/src/csp_route.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_route.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_route.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_route.c  -o ${OBJECTDIR}/libcsp/src/csp_route.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_route.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_route.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_port.o: libcsp/src/csp_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_port.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_port.c  -o ${OBJECTDIR}/libcsp/src/csp_port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_port.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_crc32.o: libcsp/src/csp_crc32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_crc32.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_crc32.c  -o ${OBJECTDIR}/libcsp/src/csp_crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_crc32.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_crc32.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_promisc.o: libcsp/src/csp_promisc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_promisc.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_promisc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_promisc.c  -o ${OBJECTDIR}/libcsp/src/csp_promisc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_promisc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_promisc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_service_handler.o: libcsp/src/csp_service_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_service_handler.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_service_handler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_service_handler.c  -o ${OBJECTDIR}/libcsp/src/csp_service_handler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_service_handler.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_service_handler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_io.o: libcsp/src/csp_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_io.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_io.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_io.c  -o ${OBJECTDIR}/libcsp/src/csp_io.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_io.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_io.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_dedup.o: libcsp/src/csp_dedup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_dedup.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_dedup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_dedup.c  -o ${OBJECTDIR}/libcsp/src/csp_dedup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_dedup.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_dedup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_bridge.o: libcsp/src/csp_bridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_bridge.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_bridge.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_bridge.c  -o ${OBJECTDIR}/libcsp/src/csp_bridge.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_bridge.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_bridge.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_hex_dump.o: libcsp/src/csp_hex_dump.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_hex_dump.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_hex_dump.c  -o ${OBJECTDIR}/libcsp/src/csp_hex_dump.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/libcsp/src/csp_debug.o: libcsp/src/csp_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_debug.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_debug.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_debug.c  -o ${OBJECTDIR}/libcsp/src/csp_debug.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/libcsp/src/csp_debug.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/libcsp/src/csp_debug.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/task_test.o: task_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/task_test.o.d 
	@${RM} ${OBJECTDIR}/task_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  task_test.c  -o ${OBJECTDIR}/task_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/task_test.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/task_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/pic_config.o: pic_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pic_config.o.d 
	@${RM} ${OBJECTDIR}/pic_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  pic_config.c  -o ${OBJECTDIR}/pic_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/pic_config.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/pic_config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/serial_comm.o: serial_comm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial_comm.o.d 
	@${RM} ${OBJECTDIR}/serial_comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  serial_comm.c  -o ${OBJECTDIR}/serial_comm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/serial_comm.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/serial_comm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/i2c_comm.o: i2c_comm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_comm.o.d 
	@${RM} ${OBJECTDIR}/i2c_comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  i2c_comm.c  -o ${OBJECTDIR}/i2c_comm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/i2c_comm.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/i2c_comm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/i2c.o: i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.o.d 
	@${RM} ${OBJECTDIR}/i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  i2c.c  -o ${OBJECTDIR}/i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/i2c.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/i2c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/742537886/taskCommunications.o: /home/javier/MPLABXProjects/SbandTRX/taskCommunications.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/742537886" 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskCommunications.o.d 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskCommunications.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/taskCommunications.c  -o ${OBJECTDIR}/_ext/742537886/taskCommunications.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/742537886/taskCommunications.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/742537886/taskCommunications.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1843642024/init_comsys.o: /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1843642024" 
	@${RM} ${OBJECTDIR}/_ext/1843642024/init_comsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843642024/init_comsys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c  -o ${OBJECTDIR}/_ext/1843642024/init_comsys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1843642024/init_comsys.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843642024/init_comsys.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/742537886/taskConsola.o: /home/javier/MPLABXProjects/SbandTRX/taskConsola.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/742537886" 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskConsola.o.d 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskConsola.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/taskConsola.c  -o ${OBJECTDIR}/_ext/742537886/taskConsola.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/742537886/taskConsola.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/742537886/taskConsola.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o: /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/Portable/portasm_PIC24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784220007" 
	@${RM} ${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/Portable/portasm_PIC24.S  -o ${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o.d" "${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o: /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/Portable/portasm_PIC24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784220007" 
	@${RM} ${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  /home/javier/MPLABXProjects/FreeRTOStest.X/FreeRTOS/Portable/portasm_PIC24.S  -o ${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o.d" "${OBJECTDIR}/_ext/1784220007/portasm_PIC24.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/SbandTRX.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/SbandTRX.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/SbandTRX.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/SbandTRX.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/SbandTRX.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
