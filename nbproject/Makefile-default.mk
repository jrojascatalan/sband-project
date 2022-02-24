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
FINAL_IMAGE=${DISTDIR}/SbandTRX.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/SbandTRX.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=FreeRTOS/Portable/port.c FreeRTOS/Portable/portasm_PIC24.S FreeRTOS/list.c FreeRTOS/heap_1.c FreeRTOS/tasks.c FreeRTOS/queue.c libcsp/src/arch/freertos/csp_queue.c libcsp/src/arch/freertos/csp_semaphore.c libcsp/src/arch/freertos/csp_system.c libcsp/src/arch/freertos/csp_malloc.c libcsp/src/arch/freertos/csp_time.c libcsp/src/arch/freertos/csp_thread.c libcsp/src/crypto/csp_hmac.c libcsp/src/crypto/csp_sha1.c libcsp/src/crypto/csp_xtea.c libcsp/src/interfaces/csp_if_lo.c libcsp/src/interfaces/csp_if_i2c.c libcsp/src/rtable/csp_rtable_static.c libcsp/src/transport/csp_udp.c libcsp/src/transport/csp_rdp.c libcsp/src/csp_buffer.c libcsp/src/csp_sfp.c libcsp/src/csp_qfifo.c libcsp/src/csp_endian.c libcsp/src/csp_conn.c libcsp/src/csp_iflist.c libcsp/src/csp_services.c libcsp/src/csp_route.c libcsp/src/csp_port.c libcsp/src/csp_crc32.c libcsp/src/csp_promisc.c libcsp/src/csp_service_handler.c libcsp/src/csp_io.c libcsp/src/csp_dedup.c libcsp/src/csp_bridge.c libcsp/src/csp_hex_dump.c libcsp/src/csp_debug.c main.c task_test.c pic_config.c serial_comm.c i2c_comm.c i2c.c /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c /home/javier/MPLABXProjects/SbandTRX/taskConsola.c taskrxhandler.c taskCommunications.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/FreeRTOS/Portable/port.o ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o ${OBJECTDIR}/FreeRTOS/list.o ${OBJECTDIR}/FreeRTOS/heap_1.o ${OBJECTDIR}/FreeRTOS/tasks.o ${OBJECTDIR}/FreeRTOS/queue.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o ${OBJECTDIR}/libcsp/src/transport/csp_udp.o ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o ${OBJECTDIR}/libcsp/src/csp_buffer.o ${OBJECTDIR}/libcsp/src/csp_sfp.o ${OBJECTDIR}/libcsp/src/csp_qfifo.o ${OBJECTDIR}/libcsp/src/csp_endian.o ${OBJECTDIR}/libcsp/src/csp_conn.o ${OBJECTDIR}/libcsp/src/csp_iflist.o ${OBJECTDIR}/libcsp/src/csp_services.o ${OBJECTDIR}/libcsp/src/csp_route.o ${OBJECTDIR}/libcsp/src/csp_port.o ${OBJECTDIR}/libcsp/src/csp_crc32.o ${OBJECTDIR}/libcsp/src/csp_promisc.o ${OBJECTDIR}/libcsp/src/csp_service_handler.o ${OBJECTDIR}/libcsp/src/csp_io.o ${OBJECTDIR}/libcsp/src/csp_dedup.o ${OBJECTDIR}/libcsp/src/csp_bridge.o ${OBJECTDIR}/libcsp/src/csp_hex_dump.o ${OBJECTDIR}/libcsp/src/csp_debug.o ${OBJECTDIR}/main.o ${OBJECTDIR}/task_test.o ${OBJECTDIR}/pic_config.o ${OBJECTDIR}/serial_comm.o ${OBJECTDIR}/i2c_comm.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/_ext/1843642024/init_comsys.o ${OBJECTDIR}/_ext/742537886/taskConsola.o ${OBJECTDIR}/taskrxhandler.o ${OBJECTDIR}/taskCommunications.o
POSSIBLE_DEPFILES=${OBJECTDIR}/FreeRTOS/Portable/port.o.d ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o.d ${OBJECTDIR}/FreeRTOS/list.o.d ${OBJECTDIR}/FreeRTOS/heap_1.o.d ${OBJECTDIR}/FreeRTOS/tasks.o.d ${OBJECTDIR}/FreeRTOS/queue.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d ${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d ${OBJECTDIR}/libcsp/src/csp_buffer.o.d ${OBJECTDIR}/libcsp/src/csp_sfp.o.d ${OBJECTDIR}/libcsp/src/csp_qfifo.o.d ${OBJECTDIR}/libcsp/src/csp_endian.o.d ${OBJECTDIR}/libcsp/src/csp_conn.o.d ${OBJECTDIR}/libcsp/src/csp_iflist.o.d ${OBJECTDIR}/libcsp/src/csp_services.o.d ${OBJECTDIR}/libcsp/src/csp_route.o.d ${OBJECTDIR}/libcsp/src/csp_port.o.d ${OBJECTDIR}/libcsp/src/csp_crc32.o.d ${OBJECTDIR}/libcsp/src/csp_promisc.o.d ${OBJECTDIR}/libcsp/src/csp_service_handler.o.d ${OBJECTDIR}/libcsp/src/csp_io.o.d ${OBJECTDIR}/libcsp/src/csp_dedup.o.d ${OBJECTDIR}/libcsp/src/csp_bridge.o.d ${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d ${OBJECTDIR}/libcsp/src/csp_debug.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/task_test.o.d ${OBJECTDIR}/pic_config.o.d ${OBJECTDIR}/serial_comm.o.d ${OBJECTDIR}/i2c_comm.o.d ${OBJECTDIR}/i2c.o.d ${OBJECTDIR}/_ext/1843642024/init_comsys.o.d ${OBJECTDIR}/_ext/742537886/taskConsola.o.d ${OBJECTDIR}/taskrxhandler.o.d ${OBJECTDIR}/taskCommunications.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/FreeRTOS/Portable/port.o ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o ${OBJECTDIR}/FreeRTOS/list.o ${OBJECTDIR}/FreeRTOS/heap_1.o ${OBJECTDIR}/FreeRTOS/tasks.o ${OBJECTDIR}/FreeRTOS/queue.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o ${OBJECTDIR}/libcsp/src/transport/csp_udp.o ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o ${OBJECTDIR}/libcsp/src/csp_buffer.o ${OBJECTDIR}/libcsp/src/csp_sfp.o ${OBJECTDIR}/libcsp/src/csp_qfifo.o ${OBJECTDIR}/libcsp/src/csp_endian.o ${OBJECTDIR}/libcsp/src/csp_conn.o ${OBJECTDIR}/libcsp/src/csp_iflist.o ${OBJECTDIR}/libcsp/src/csp_services.o ${OBJECTDIR}/libcsp/src/csp_route.o ${OBJECTDIR}/libcsp/src/csp_port.o ${OBJECTDIR}/libcsp/src/csp_crc32.o ${OBJECTDIR}/libcsp/src/csp_promisc.o ${OBJECTDIR}/libcsp/src/csp_service_handler.o ${OBJECTDIR}/libcsp/src/csp_io.o ${OBJECTDIR}/libcsp/src/csp_dedup.o ${OBJECTDIR}/libcsp/src/csp_bridge.o ${OBJECTDIR}/libcsp/src/csp_hex_dump.o ${OBJECTDIR}/libcsp/src/csp_debug.o ${OBJECTDIR}/main.o ${OBJECTDIR}/task_test.o ${OBJECTDIR}/pic_config.o ${OBJECTDIR}/serial_comm.o ${OBJECTDIR}/i2c_comm.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/_ext/1843642024/init_comsys.o ${OBJECTDIR}/_ext/742537886/taskConsola.o ${OBJECTDIR}/taskrxhandler.o ${OBJECTDIR}/taskCommunications.o

# Source Files
SOURCEFILES=FreeRTOS/Portable/port.c FreeRTOS/Portable/portasm_PIC24.S FreeRTOS/list.c FreeRTOS/heap_1.c FreeRTOS/tasks.c FreeRTOS/queue.c libcsp/src/arch/freertos/csp_queue.c libcsp/src/arch/freertos/csp_semaphore.c libcsp/src/arch/freertos/csp_system.c libcsp/src/arch/freertos/csp_malloc.c libcsp/src/arch/freertos/csp_time.c libcsp/src/arch/freertos/csp_thread.c libcsp/src/crypto/csp_hmac.c libcsp/src/crypto/csp_sha1.c libcsp/src/crypto/csp_xtea.c libcsp/src/interfaces/csp_if_lo.c libcsp/src/interfaces/csp_if_i2c.c libcsp/src/rtable/csp_rtable_static.c libcsp/src/transport/csp_udp.c libcsp/src/transport/csp_rdp.c libcsp/src/csp_buffer.c libcsp/src/csp_sfp.c libcsp/src/csp_qfifo.c libcsp/src/csp_endian.c libcsp/src/csp_conn.c libcsp/src/csp_iflist.c libcsp/src/csp_services.c libcsp/src/csp_route.c libcsp/src/csp_port.c libcsp/src/csp_crc32.c libcsp/src/csp_promisc.c libcsp/src/csp_service_handler.c libcsp/src/csp_io.c libcsp/src/csp_dedup.c libcsp/src/csp_bridge.c libcsp/src/csp_hex_dump.c libcsp/src/csp_debug.c main.c task_test.c pic_config.c serial_comm.c i2c_comm.c i2c.c /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c /home/javier/MPLABXProjects/SbandTRX/taskConsola.c taskrxhandler.c taskCommunications.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/SbandTRX.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GB106
MP_LINKER_FILE_OPTION=,--script=p24FJ256GB106.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/FreeRTOS/Portable/port.o: FreeRTOS/Portable/port.c  .generated_files/flags/default/cb48b417aa223d8327af29c29966e8b91bdc61ce .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Portable" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Portable/port.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Portable/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Portable/port.c  -o ${OBJECTDIR}/FreeRTOS/Portable/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Portable/port.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/list.o: FreeRTOS/list.c  .generated_files/flags/default/7420368d83e2898563ba0146cd6f3537842c9c4 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS" 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/list.c  -o ${OBJECTDIR}/FreeRTOS/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/list.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/heap_1.o: FreeRTOS/heap_1.c  .generated_files/flags/default/bac10a2cef2f66c60ac979fdefb5a151ba44bd24 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS" 
	@${RM} ${OBJECTDIR}/FreeRTOS/heap_1.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/heap_1.c  -o ${OBJECTDIR}/FreeRTOS/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/heap_1.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/tasks.o: FreeRTOS/tasks.c  .generated_files/flags/default/6ac2493b598c2471e7fddaa6f0a76a8881ef6b21 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS" 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/tasks.c  -o ${OBJECTDIR}/FreeRTOS/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/tasks.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/queue.o: FreeRTOS/queue.c  .generated_files/flags/default/db60c6f8c547531debba08327c3823d58e38e0fa .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS" 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/queue.c  -o ${OBJECTDIR}/FreeRTOS/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/queue.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o: libcsp/src/arch/freertos/csp_queue.c  .generated_files/flags/default/a2ffcc6b3e576e4fbef345fca15e0283c0869a1c .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_queue.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o: libcsp/src/arch/freertos/csp_semaphore.c  .generated_files/flags/default/d7c11fbcf7cabdfd605bb4378727a2da5babea13 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_semaphore.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o: libcsp/src/arch/freertos/csp_system.c  .generated_files/flags/default/dfb70f37a015e8bb9dbf215b83979596a525ef3d .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_system.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o: libcsp/src/arch/freertos/csp_malloc.c  .generated_files/flags/default/77273386742263b01d51b1a3371d5c122359ed53 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_malloc.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o: libcsp/src/arch/freertos/csp_time.c  .generated_files/flags/default/edc39be3d271dc626c7ed931932b63e54089ce6d .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_time.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o: libcsp/src/arch/freertos/csp_thread.c  .generated_files/flags/default/c9063368fcc27b3b6a9face3e2256659a44800f6 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_thread.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o: libcsp/src/crypto/csp_hmac.c  .generated_files/flags/default/59a3d04bcb966d841d4b69cba5bb41b7c811f10a .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_hmac.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o: libcsp/src/crypto/csp_sha1.c  .generated_files/flags/default/afab8a95aaad1e33b4daf73d209616ec068ea1fc .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_sha1.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o: libcsp/src/crypto/csp_xtea.c  .generated_files/flags/default/a56bd949fd8a58f84b00d47ea75f95e5f79d7285 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_xtea.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o: libcsp/src/interfaces/csp_if_lo.c  .generated_files/flags/default/881ab84e7366c3004890b10737a512fbeaf6c939 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/interfaces" 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/interfaces/csp_if_lo.c  -o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o: libcsp/src/interfaces/csp_if_i2c.c  .generated_files/flags/default/a539d133a797f1cc1c457861fb720ed2c8b35d58 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/interfaces" 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/interfaces/csp_if_i2c.c  -o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o: libcsp/src/rtable/csp_rtable_static.c  .generated_files/flags/default/c879809fe446b810cb3dfda12cfb4e5bd1641492 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/rtable" 
	@${RM} ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/rtable/csp_rtable_static.c  -o ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/transport/csp_udp.o: libcsp/src/transport/csp_udp.c  .generated_files/flags/default/d98f6fc2493f0e261ac19b9edec08e8ccb222d25 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/transport" 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_udp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/transport/csp_udp.c  -o ${OBJECTDIR}/libcsp/src/transport/csp_udp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/transport/csp_rdp.o: libcsp/src/transport/csp_rdp.c  .generated_files/flags/default/9b1f2d39db4af7eef84142cffa073fd0dd2fa211 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/transport" 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/transport/csp_rdp.c  -o ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_buffer.o: libcsp/src/csp_buffer.c  .generated_files/flags/default/1feadda3d7d2c59ee41e7a3d3e3261105ce2a32e .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_buffer.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_buffer.c  -o ${OBJECTDIR}/libcsp/src/csp_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_buffer.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_sfp.o: libcsp/src/csp_sfp.c  .generated_files/flags/default/b800288d0c2d72e1bbe3b6f0aa3d62fb61b26e89 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_sfp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_sfp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_sfp.c  -o ${OBJECTDIR}/libcsp/src/csp_sfp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_sfp.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_qfifo.o: libcsp/src/csp_qfifo.c  .generated_files/flags/default/e564ea1b13c021896cb3375c62b32d8c123e7333 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_qfifo.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_qfifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_qfifo.c  -o ${OBJECTDIR}/libcsp/src/csp_qfifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_qfifo.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_endian.o: libcsp/src/csp_endian.c  .generated_files/flags/default/4c106b3e04e6b02ab42a334702fc9f3c9ff3e4e9 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_endian.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_endian.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_endian.c  -o ${OBJECTDIR}/libcsp/src/csp_endian.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_endian.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_conn.o: libcsp/src/csp_conn.c  .generated_files/flags/default/66be48635f57d962e9ba5eb14483f0d0f2095b00 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_conn.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_conn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_conn.c  -o ${OBJECTDIR}/libcsp/src/csp_conn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_conn.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_iflist.o: libcsp/src/csp_iflist.c  .generated_files/flags/default/2920179a5926c0b4ddf3930be0b1be43545fb39a .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_iflist.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_iflist.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_iflist.c  -o ${OBJECTDIR}/libcsp/src/csp_iflist.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_iflist.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_services.o: libcsp/src/csp_services.c  .generated_files/flags/default/5f63a5d16629b6c90d87481c890829b0b171ee79 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_services.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_services.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_services.c  -o ${OBJECTDIR}/libcsp/src/csp_services.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_services.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_route.o: libcsp/src/csp_route.c  .generated_files/flags/default/e0659b7e4202bd173c64f0b75cf66e4c6c6a5367 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_route.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_route.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_route.c  -o ${OBJECTDIR}/libcsp/src/csp_route.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_route.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_port.o: libcsp/src/csp_port.c  .generated_files/flags/default/5fb6e91f23d78a67ad6c112bebe534a822bfbe31 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_port.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_port.c  -o ${OBJECTDIR}/libcsp/src/csp_port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_port.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_crc32.o: libcsp/src/csp_crc32.c  .generated_files/flags/default/f4bee9b0bea95abc14e38c7d7bced8cf709a460b .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_crc32.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_crc32.c  -o ${OBJECTDIR}/libcsp/src/csp_crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_crc32.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_promisc.o: libcsp/src/csp_promisc.c  .generated_files/flags/default/ebad4c564cab134dae5373bb0cc3b754c27ea158 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_promisc.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_promisc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_promisc.c  -o ${OBJECTDIR}/libcsp/src/csp_promisc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_promisc.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_service_handler.o: libcsp/src/csp_service_handler.c  .generated_files/flags/default/dc74463a09fe71b4df51e0c1d6d3b71737c85eed .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_service_handler.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_service_handler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_service_handler.c  -o ${OBJECTDIR}/libcsp/src/csp_service_handler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_service_handler.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_io.o: libcsp/src/csp_io.c  .generated_files/flags/default/5f907f3aa4205ad7e55abaa599709064055619f4 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_io.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_io.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_io.c  -o ${OBJECTDIR}/libcsp/src/csp_io.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_io.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_dedup.o: libcsp/src/csp_dedup.c  .generated_files/flags/default/becac6dcbf56cb3feed5530bd4d1c22c584007ad .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_dedup.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_dedup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_dedup.c  -o ${OBJECTDIR}/libcsp/src/csp_dedup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_dedup.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_bridge.o: libcsp/src/csp_bridge.c  .generated_files/flags/default/3dc6cccca44105a17fe828bf1fe29b424ec979b2 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_bridge.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_bridge.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_bridge.c  -o ${OBJECTDIR}/libcsp/src/csp_bridge.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_bridge.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_hex_dump.o: libcsp/src/csp_hex_dump.c  .generated_files/flags/default/2bcacdc0ebe2b0854da6790fd58443a3c8964b30 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_hex_dump.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_hex_dump.c  -o ${OBJECTDIR}/libcsp/src/csp_hex_dump.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_debug.o: libcsp/src/csp_debug.c  .generated_files/flags/default/806df391906d190552ed32fbdcf935a4cd275a8f .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_debug.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_debug.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_debug.c  -o ${OBJECTDIR}/libcsp/src/csp_debug.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_debug.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/8f12885958f2481ca398cd1ba9c1c257697e2b06 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/task_test.o: task_test.c  .generated_files/flags/default/3e3a67c4861886cf28ad44753eeb44fc13dea375 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/task_test.o.d 
	@${RM} ${OBJECTDIR}/task_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  task_test.c  -o ${OBJECTDIR}/task_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/task_test.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/pic_config.o: pic_config.c  .generated_files/flags/default/52e9c8de4d729a1dde1045f85250557b68d5f5b0 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pic_config.o.d 
	@${RM} ${OBJECTDIR}/pic_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  pic_config.c  -o ${OBJECTDIR}/pic_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/pic_config.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/serial_comm.o: serial_comm.c  .generated_files/flags/default/5a8a544201d36020aeabc209eb5f04bdc5bb7f94 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial_comm.o.d 
	@${RM} ${OBJECTDIR}/serial_comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  serial_comm.c  -o ${OBJECTDIR}/serial_comm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/serial_comm.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/i2c_comm.o: i2c_comm.c  .generated_files/flags/default/d9fbbb3a88774bfc044d3d8f1a1af89ea83e9290 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_comm.o.d 
	@${RM} ${OBJECTDIR}/i2c_comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  i2c_comm.c  -o ${OBJECTDIR}/i2c_comm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/i2c_comm.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/i2c.o: i2c.c  .generated_files/flags/default/a83a6ff8ff8f4ceb93e71c908c53b3134dff34cd .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.o.d 
	@${RM} ${OBJECTDIR}/i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  i2c.c  -o ${OBJECTDIR}/i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/i2c.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1843642024/init_comsys.o: /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c  .generated_files/flags/default/33dcfa68051979d83296d8566f6204858edf5a3e .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/_ext/1843642024" 
	@${RM} ${OBJECTDIR}/_ext/1843642024/init_comsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843642024/init_comsys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c  -o ${OBJECTDIR}/_ext/1843642024/init_comsys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1843642024/init_comsys.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/742537886/taskConsola.o: /home/javier/MPLABXProjects/SbandTRX/taskConsola.c  .generated_files/flags/default/7f3121bf4ba2b3ff37cbf9533190164fb4c488e6 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/_ext/742537886" 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskConsola.o.d 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskConsola.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/taskConsola.c  -o ${OBJECTDIR}/_ext/742537886/taskConsola.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/742537886/taskConsola.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/taskrxhandler.o: taskrxhandler.c  .generated_files/flags/default/6c7df3587b86ee7b6da7cec0e98d466cce5e1cf6 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/taskrxhandler.o.d 
	@${RM} ${OBJECTDIR}/taskrxhandler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  taskrxhandler.c  -o ${OBJECTDIR}/taskrxhandler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/taskrxhandler.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/taskCommunications.o: taskCommunications.c  .generated_files/flags/default/791d228d24e413fefb9931f591880e273077c50e .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/taskCommunications.o.d 
	@${RM} ${OBJECTDIR}/taskCommunications.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  taskCommunications.c  -o ${OBJECTDIR}/taskCommunications.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/taskCommunications.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/FreeRTOS/Portable/port.o: FreeRTOS/Portable/port.c  .generated_files/flags/default/24baf93bb988e760ef881809868e2bf2f5197be5 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Portable" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Portable/port.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Portable/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Portable/port.c  -o ${OBJECTDIR}/FreeRTOS/Portable/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Portable/port.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/list.o: FreeRTOS/list.c  .generated_files/flags/default/18a4393cfc8c9b09b6be026705ae6a956b9a0fde .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS" 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/list.c  -o ${OBJECTDIR}/FreeRTOS/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/list.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/heap_1.o: FreeRTOS/heap_1.c  .generated_files/flags/default/25b9194403fbc6cd4d02a5d985ae106313a2a3bf .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS" 
	@${RM} ${OBJECTDIR}/FreeRTOS/heap_1.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/heap_1.c  -o ${OBJECTDIR}/FreeRTOS/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/heap_1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/tasks.o: FreeRTOS/tasks.c  .generated_files/flags/default/6adb83b8f0da8c0704764cb1aae8a2d722cb7d62 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS" 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/tasks.c  -o ${OBJECTDIR}/FreeRTOS/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/tasks.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/queue.o: FreeRTOS/queue.c  .generated_files/flags/default/c80264ea428af9ccc9850d5fe0b082b163943c24 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS" 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/queue.c  -o ${OBJECTDIR}/FreeRTOS/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/queue.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o: libcsp/src/arch/freertos/csp_queue.c  .generated_files/flags/default/6c177e315665caad34ded9a2adea19ac51d4807 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_queue.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o: libcsp/src/arch/freertos/csp_semaphore.c  .generated_files/flags/default/e88c0f8ecdb66aa2ae7bdde34af621134aaf7451 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_semaphore.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o: libcsp/src/arch/freertos/csp_system.c  .generated_files/flags/default/ae8b15b58cabc2b76b1648d9d2baf14c71961129 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_system.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o: libcsp/src/arch/freertos/csp_malloc.c  .generated_files/flags/default/a6f61dd01859a0a6079e065b49a7ce97c43e0da1 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_malloc.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o: libcsp/src/arch/freertos/csp_time.c  .generated_files/flags/default/40c68bd009dba130448085a2226371b63dcd1f8f .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_time.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o: libcsp/src/arch/freertos/csp_thread.c  .generated_files/flags/default/7a4540fb965fc155058c7a2573a4ee367db704e6 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_thread.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o: libcsp/src/crypto/csp_hmac.c  .generated_files/flags/default/2f16ea3a1f0107db281702e375f6aba74f992e76 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_hmac.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o: libcsp/src/crypto/csp_sha1.c  .generated_files/flags/default/912263f00b48be318c32bef9958744addb65da3 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_sha1.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o: libcsp/src/crypto/csp_xtea.c  .generated_files/flags/default/daba2945ffc5221a0d031135a6170439e76d5a1 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_xtea.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o: libcsp/src/interfaces/csp_if_lo.c  .generated_files/flags/default/d8eba95082b782e81413917a40308d4ce2fb0be8 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/interfaces" 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/interfaces/csp_if_lo.c  -o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o: libcsp/src/interfaces/csp_if_i2c.c  .generated_files/flags/default/7c7932aa2586d5b3ec0c7fb62162b4ff87ab4c20 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/interfaces" 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/interfaces/csp_if_i2c.c  -o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o: libcsp/src/rtable/csp_rtable_static.c  .generated_files/flags/default/6a91ab9ffd8b25bf9750001a07c3983123fec495 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/rtable" 
	@${RM} ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/rtable/csp_rtable_static.c  -o ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/transport/csp_udp.o: libcsp/src/transport/csp_udp.c  .generated_files/flags/default/adc6e5d5c6cc119e3d7ae6015f8e0417f7395a2d .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/transport" 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_udp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/transport/csp_udp.c  -o ${OBJECTDIR}/libcsp/src/transport/csp_udp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/transport/csp_rdp.o: libcsp/src/transport/csp_rdp.c  .generated_files/flags/default/8040361536ba6cd94c4fd6d2c9e79781bda331c2 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/transport" 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/transport/csp_rdp.c  -o ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_buffer.o: libcsp/src/csp_buffer.c  .generated_files/flags/default/4b0e8a3e51e67dc2cf27e98aaa0e9b5de37acc0f .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_buffer.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_buffer.c  -o ${OBJECTDIR}/libcsp/src/csp_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_buffer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_sfp.o: libcsp/src/csp_sfp.c  .generated_files/flags/default/ae8a85e7020c845ea4ce632aeed79a5f06baea4a .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_sfp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_sfp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_sfp.c  -o ${OBJECTDIR}/libcsp/src/csp_sfp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_sfp.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_qfifo.o: libcsp/src/csp_qfifo.c  .generated_files/flags/default/cc3ec6d6b63eeeeaf316dc6b679e4f69e52e1db6 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_qfifo.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_qfifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_qfifo.c  -o ${OBJECTDIR}/libcsp/src/csp_qfifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_qfifo.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_endian.o: libcsp/src/csp_endian.c  .generated_files/flags/default/f86032713bb2f24936a82e15d3f58a254c758198 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_endian.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_endian.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_endian.c  -o ${OBJECTDIR}/libcsp/src/csp_endian.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_endian.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_conn.o: libcsp/src/csp_conn.c  .generated_files/flags/default/d054fa53158a721eaca826b3f3d6613bacdb2efd .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_conn.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_conn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_conn.c  -o ${OBJECTDIR}/libcsp/src/csp_conn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_conn.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_iflist.o: libcsp/src/csp_iflist.c  .generated_files/flags/default/dcdb4f8798e2d6079bdc94e5ecaf55a51b05d8c7 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_iflist.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_iflist.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_iflist.c  -o ${OBJECTDIR}/libcsp/src/csp_iflist.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_iflist.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_services.o: libcsp/src/csp_services.c  .generated_files/flags/default/75edb931e53d036618925c96466ac0bc6b039660 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_services.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_services.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_services.c  -o ${OBJECTDIR}/libcsp/src/csp_services.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_services.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_route.o: libcsp/src/csp_route.c  .generated_files/flags/default/eb9d3443e10ab3709b60a070bcc43f593c52a9b5 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_route.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_route.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_route.c  -o ${OBJECTDIR}/libcsp/src/csp_route.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_route.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_port.o: libcsp/src/csp_port.c  .generated_files/flags/default/2617fa0bfabb40829b6626cd7f97fd1e97e7fb62 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_port.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_port.c  -o ${OBJECTDIR}/libcsp/src/csp_port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_port.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_crc32.o: libcsp/src/csp_crc32.c  .generated_files/flags/default/a067bc14242bb5255bf7da3005db9ca76c2599e4 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_crc32.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_crc32.c  -o ${OBJECTDIR}/libcsp/src/csp_crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_crc32.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_promisc.o: libcsp/src/csp_promisc.c  .generated_files/flags/default/f7fa3c3ecc72a6314c251c479e725962cf45758f .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_promisc.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_promisc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_promisc.c  -o ${OBJECTDIR}/libcsp/src/csp_promisc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_promisc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_service_handler.o: libcsp/src/csp_service_handler.c  .generated_files/flags/default/f7e91f29d5b8063088a3d7dd88b59129cdc15d5e .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_service_handler.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_service_handler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_service_handler.c  -o ${OBJECTDIR}/libcsp/src/csp_service_handler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_service_handler.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_io.o: libcsp/src/csp_io.c  .generated_files/flags/default/24f18db798ab2fe0dc74341a724a46593cb56d55 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_io.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_io.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_io.c  -o ${OBJECTDIR}/libcsp/src/csp_io.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_io.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_dedup.o: libcsp/src/csp_dedup.c  .generated_files/flags/default/f3c24cb47bbec67811c85aa43e6b192ca744a47c .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_dedup.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_dedup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_dedup.c  -o ${OBJECTDIR}/libcsp/src/csp_dedup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_dedup.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_bridge.o: libcsp/src/csp_bridge.c  .generated_files/flags/default/b4b7f73705912aeba1086dfabf8e5f823d35c1d7 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_bridge.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_bridge.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_bridge.c  -o ${OBJECTDIR}/libcsp/src/csp_bridge.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_bridge.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_hex_dump.o: libcsp/src/csp_hex_dump.c  .generated_files/flags/default/2f0a5f619fe3952705b6410594eb957cfb4e5fd4 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_hex_dump.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_hex_dump.c  -o ${OBJECTDIR}/libcsp/src/csp_hex_dump.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_debug.o: libcsp/src/csp_debug.c  .generated_files/flags/default/9bfb975d7f3d1b74144617061abbeca07388b843 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_debug.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_debug.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_debug.c  -o ${OBJECTDIR}/libcsp/src/csp_debug.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_debug.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/aff4e4658d855ccaa2343df862e58485c16a8c45 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/task_test.o: task_test.c  .generated_files/flags/default/4888460330cfd215d338be94fa0a932eec0f0a97 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/task_test.o.d 
	@${RM} ${OBJECTDIR}/task_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  task_test.c  -o ${OBJECTDIR}/task_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/task_test.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/pic_config.o: pic_config.c  .generated_files/flags/default/83dbc17ec3edd486278646ea48d08b08682ff2f1 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pic_config.o.d 
	@${RM} ${OBJECTDIR}/pic_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  pic_config.c  -o ${OBJECTDIR}/pic_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/pic_config.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/serial_comm.o: serial_comm.c  .generated_files/flags/default/57eac6369067d15d3794eeff154768cb99c45b53 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial_comm.o.d 
	@${RM} ${OBJECTDIR}/serial_comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  serial_comm.c  -o ${OBJECTDIR}/serial_comm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/serial_comm.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/i2c_comm.o: i2c_comm.c  .generated_files/flags/default/37645a561e81352be36e678643767143389b42df .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_comm.o.d 
	@${RM} ${OBJECTDIR}/i2c_comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  i2c_comm.c  -o ${OBJECTDIR}/i2c_comm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/i2c_comm.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/i2c.o: i2c.c  .generated_files/flags/default/17b6fc409f74592a779c3cdc3cca3f7c1d4f9b02 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.o.d 
	@${RM} ${OBJECTDIR}/i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  i2c.c  -o ${OBJECTDIR}/i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/i2c.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1843642024/init_comsys.o: /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c  .generated_files/flags/default/a07413fdab981f0d7a601e9489c08dc3855e4ed1 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/_ext/1843642024" 
	@${RM} ${OBJECTDIR}/_ext/1843642024/init_comsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843642024/init_comsys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c  -o ${OBJECTDIR}/_ext/1843642024/init_comsys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1843642024/init_comsys.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/742537886/taskConsola.o: /home/javier/MPLABXProjects/SbandTRX/taskConsola.c  .generated_files/flags/default/c710cd8acccf1412faaa266f8fe3ac8f839698c5 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/_ext/742537886" 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskConsola.o.d 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskConsola.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/taskConsola.c  -o ${OBJECTDIR}/_ext/742537886/taskConsola.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/742537886/taskConsola.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/taskrxhandler.o: taskrxhandler.c  .generated_files/flags/default/92a32cd37232165e741921888ddf64e5cd7eb5f5 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/taskrxhandler.o.d 
	@${RM} ${OBJECTDIR}/taskrxhandler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  taskrxhandler.c  -o ${OBJECTDIR}/taskrxhandler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/taskrxhandler.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/taskCommunications.o: taskCommunications.c  .generated_files/flags/default/218d5da4af4f0cf4641a32339c6f4c0a1eb16759 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/taskCommunications.o.d 
	@${RM} ${OBJECTDIR}/taskCommunications.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  taskCommunications.c  -o ${OBJECTDIR}/taskCommunications.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/taskCommunications.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o: FreeRTOS/Portable/portasm_PIC24.S  .generated_files/flags/default/29641b5a1d65633b1cab8fc1cbd7591b311807a6 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Portable" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  FreeRTOS/Portable/portasm_PIC24.S  -o ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o: FreeRTOS/Portable/portasm_PIC24.S  .generated_files/flags/default/bbb99b0619026fb592dd01bf6a3f8465b0b2a5e5 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Portable" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  FreeRTOS/Portable/portasm_PIC24.S  -o ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/SbandTRX.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/SbandTRX.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/SbandTRX.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/SbandTRX.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex ${DISTDIR}/SbandTRX.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
