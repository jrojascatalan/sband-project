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
SOURCEFILES_QUOTED_IF_SPACED=FreeRTOS/Portable/port.c FreeRTOS/Portable/portasm_PIC24.S FreeRTOS/list.c FreeRTOS/heap_1.c FreeRTOS/tasks.c FreeRTOS/queue.c libcsp/src/arch/freertos/csp_queue.c libcsp/src/arch/freertos/csp_semaphore.c libcsp/src/arch/freertos/csp_system.c libcsp/src/arch/freertos/csp_malloc.c libcsp/src/arch/freertos/csp_time.c libcsp/src/arch/freertos/csp_thread.c libcsp/src/crypto/csp_hmac.c libcsp/src/crypto/csp_sha1.c libcsp/src/crypto/csp_xtea.c libcsp/src/interfaces/csp_if_lo.c libcsp/src/interfaces/csp_if_i2c.c libcsp/src/rtable/csp_rtable_static.c libcsp/src/transport/csp_udp.c libcsp/src/transport/csp_rdp.c libcsp/src/csp_buffer.c libcsp/src/csp_sfp.c libcsp/src/csp_qfifo.c libcsp/src/csp_endian.c libcsp/src/csp_conn.c libcsp/src/csp_iflist.c libcsp/src/csp_services.c libcsp/src/csp_route.c libcsp/src/csp_port.c libcsp/src/csp_crc32.c libcsp/src/csp_promisc.c libcsp/src/csp_service_handler.c libcsp/src/csp_io.c libcsp/src/csp_dedup.c libcsp/src/csp_bridge.c libcsp/src/csp_hex_dump.c libcsp/src/csp_debug.c main.c task_test.c pic_config.c serial_comm.c i2c_comm.c i2c.c /home/javier/MPLABXProjects/SbandTRX/taskCommunications.c /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c /home/javier/MPLABXProjects/SbandTRX/taskConsola.c taskrxhandler.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/FreeRTOS/Portable/port.o ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o ${OBJECTDIR}/FreeRTOS/list.o ${OBJECTDIR}/FreeRTOS/heap_1.o ${OBJECTDIR}/FreeRTOS/tasks.o ${OBJECTDIR}/FreeRTOS/queue.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o ${OBJECTDIR}/libcsp/src/transport/csp_udp.o ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o ${OBJECTDIR}/libcsp/src/csp_buffer.o ${OBJECTDIR}/libcsp/src/csp_sfp.o ${OBJECTDIR}/libcsp/src/csp_qfifo.o ${OBJECTDIR}/libcsp/src/csp_endian.o ${OBJECTDIR}/libcsp/src/csp_conn.o ${OBJECTDIR}/libcsp/src/csp_iflist.o ${OBJECTDIR}/libcsp/src/csp_services.o ${OBJECTDIR}/libcsp/src/csp_route.o ${OBJECTDIR}/libcsp/src/csp_port.o ${OBJECTDIR}/libcsp/src/csp_crc32.o ${OBJECTDIR}/libcsp/src/csp_promisc.o ${OBJECTDIR}/libcsp/src/csp_service_handler.o ${OBJECTDIR}/libcsp/src/csp_io.o ${OBJECTDIR}/libcsp/src/csp_dedup.o ${OBJECTDIR}/libcsp/src/csp_bridge.o ${OBJECTDIR}/libcsp/src/csp_hex_dump.o ${OBJECTDIR}/libcsp/src/csp_debug.o ${OBJECTDIR}/main.o ${OBJECTDIR}/task_test.o ${OBJECTDIR}/pic_config.o ${OBJECTDIR}/serial_comm.o ${OBJECTDIR}/i2c_comm.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/_ext/742537886/taskCommunications.o ${OBJECTDIR}/_ext/1843642024/init_comsys.o ${OBJECTDIR}/_ext/742537886/taskConsola.o ${OBJECTDIR}/taskrxhandler.o
POSSIBLE_DEPFILES=${OBJECTDIR}/FreeRTOS/Portable/port.o.d ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o.d ${OBJECTDIR}/FreeRTOS/list.o.d ${OBJECTDIR}/FreeRTOS/heap_1.o.d ${OBJECTDIR}/FreeRTOS/tasks.o.d ${OBJECTDIR}/FreeRTOS/queue.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d ${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d ${OBJECTDIR}/libcsp/src/csp_buffer.o.d ${OBJECTDIR}/libcsp/src/csp_sfp.o.d ${OBJECTDIR}/libcsp/src/csp_qfifo.o.d ${OBJECTDIR}/libcsp/src/csp_endian.o.d ${OBJECTDIR}/libcsp/src/csp_conn.o.d ${OBJECTDIR}/libcsp/src/csp_iflist.o.d ${OBJECTDIR}/libcsp/src/csp_services.o.d ${OBJECTDIR}/libcsp/src/csp_route.o.d ${OBJECTDIR}/libcsp/src/csp_port.o.d ${OBJECTDIR}/libcsp/src/csp_crc32.o.d ${OBJECTDIR}/libcsp/src/csp_promisc.o.d ${OBJECTDIR}/libcsp/src/csp_service_handler.o.d ${OBJECTDIR}/libcsp/src/csp_io.o.d ${OBJECTDIR}/libcsp/src/csp_dedup.o.d ${OBJECTDIR}/libcsp/src/csp_bridge.o.d ${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d ${OBJECTDIR}/libcsp/src/csp_debug.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/task_test.o.d ${OBJECTDIR}/pic_config.o.d ${OBJECTDIR}/serial_comm.o.d ${OBJECTDIR}/i2c_comm.o.d ${OBJECTDIR}/i2c.o.d ${OBJECTDIR}/_ext/742537886/taskCommunications.o.d ${OBJECTDIR}/_ext/1843642024/init_comsys.o.d ${OBJECTDIR}/_ext/742537886/taskConsola.o.d ${OBJECTDIR}/taskrxhandler.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/FreeRTOS/Portable/port.o ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o ${OBJECTDIR}/FreeRTOS/list.o ${OBJECTDIR}/FreeRTOS/heap_1.o ${OBJECTDIR}/FreeRTOS/tasks.o ${OBJECTDIR}/FreeRTOS/queue.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o ${OBJECTDIR}/libcsp/src/transport/csp_udp.o ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o ${OBJECTDIR}/libcsp/src/csp_buffer.o ${OBJECTDIR}/libcsp/src/csp_sfp.o ${OBJECTDIR}/libcsp/src/csp_qfifo.o ${OBJECTDIR}/libcsp/src/csp_endian.o ${OBJECTDIR}/libcsp/src/csp_conn.o ${OBJECTDIR}/libcsp/src/csp_iflist.o ${OBJECTDIR}/libcsp/src/csp_services.o ${OBJECTDIR}/libcsp/src/csp_route.o ${OBJECTDIR}/libcsp/src/csp_port.o ${OBJECTDIR}/libcsp/src/csp_crc32.o ${OBJECTDIR}/libcsp/src/csp_promisc.o ${OBJECTDIR}/libcsp/src/csp_service_handler.o ${OBJECTDIR}/libcsp/src/csp_io.o ${OBJECTDIR}/libcsp/src/csp_dedup.o ${OBJECTDIR}/libcsp/src/csp_bridge.o ${OBJECTDIR}/libcsp/src/csp_hex_dump.o ${OBJECTDIR}/libcsp/src/csp_debug.o ${OBJECTDIR}/main.o ${OBJECTDIR}/task_test.o ${OBJECTDIR}/pic_config.o ${OBJECTDIR}/serial_comm.o ${OBJECTDIR}/i2c_comm.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/_ext/742537886/taskCommunications.o ${OBJECTDIR}/_ext/1843642024/init_comsys.o ${OBJECTDIR}/_ext/742537886/taskConsola.o ${OBJECTDIR}/taskrxhandler.o

# Source Files
SOURCEFILES=FreeRTOS/Portable/port.c FreeRTOS/Portable/portasm_PIC24.S FreeRTOS/list.c FreeRTOS/heap_1.c FreeRTOS/tasks.c FreeRTOS/queue.c libcsp/src/arch/freertos/csp_queue.c libcsp/src/arch/freertos/csp_semaphore.c libcsp/src/arch/freertos/csp_system.c libcsp/src/arch/freertos/csp_malloc.c libcsp/src/arch/freertos/csp_time.c libcsp/src/arch/freertos/csp_thread.c libcsp/src/crypto/csp_hmac.c libcsp/src/crypto/csp_sha1.c libcsp/src/crypto/csp_xtea.c libcsp/src/interfaces/csp_if_lo.c libcsp/src/interfaces/csp_if_i2c.c libcsp/src/rtable/csp_rtable_static.c libcsp/src/transport/csp_udp.c libcsp/src/transport/csp_rdp.c libcsp/src/csp_buffer.c libcsp/src/csp_sfp.c libcsp/src/csp_qfifo.c libcsp/src/csp_endian.c libcsp/src/csp_conn.c libcsp/src/csp_iflist.c libcsp/src/csp_services.c libcsp/src/csp_route.c libcsp/src/csp_port.c libcsp/src/csp_crc32.c libcsp/src/csp_promisc.c libcsp/src/csp_service_handler.c libcsp/src/csp_io.c libcsp/src/csp_dedup.c libcsp/src/csp_bridge.c libcsp/src/csp_hex_dump.c libcsp/src/csp_debug.c main.c task_test.c pic_config.c serial_comm.c i2c_comm.c i2c.c /home/javier/MPLABXProjects/SbandTRX/taskCommunications.c /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c /home/javier/MPLABXProjects/SbandTRX/taskConsola.c taskrxhandler.c



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
${OBJECTDIR}/FreeRTOS/Portable/port.o: FreeRTOS/Portable/port.c  .generated_files/flags/default/9b824d921f85a8a3026be44be32eaa445eec9a2f .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Portable" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Portable/port.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Portable/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Portable/port.c  -o ${OBJECTDIR}/FreeRTOS/Portable/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Portable/port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/list.o: FreeRTOS/list.c  .generated_files/flags/default/c85d25111e5cb9685a47b4d7e33d17373d0ecaab .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS" 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/list.c  -o ${OBJECTDIR}/FreeRTOS/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/list.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/heap_1.o: FreeRTOS/heap_1.c  .generated_files/flags/default/8f752780feab8d4687da48928be09089412d20f8 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS" 
	@${RM} ${OBJECTDIR}/FreeRTOS/heap_1.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/heap_1.c  -o ${OBJECTDIR}/FreeRTOS/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/heap_1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/tasks.o: FreeRTOS/tasks.c  .generated_files/flags/default/e515bf2cf11d62409c322b1651496cb54f009690 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS" 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/tasks.c  -o ${OBJECTDIR}/FreeRTOS/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/tasks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/queue.o: FreeRTOS/queue.c  .generated_files/flags/default/90720303ccfb2ca5bdc3ccac397554d563995dff .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS" 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/queue.c  -o ${OBJECTDIR}/FreeRTOS/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o: libcsp/src/arch/freertos/csp_queue.c  .generated_files/flags/default/c07cc678c93095d924b1ea276101024d543e3c56 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_queue.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o: libcsp/src/arch/freertos/csp_semaphore.c  .generated_files/flags/default/239f23f636ca48bb22865d98ebd49efbc10aeb01 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_semaphore.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_semaphore.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o: libcsp/src/arch/freertos/csp_system.c  .generated_files/flags/default/e078bd902f3596a385580c69e7f6470a74810b56 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_system.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o: libcsp/src/arch/freertos/csp_malloc.c  .generated_files/flags/default/163926148de7191f32ffececaaba39443c3e5d81 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_malloc.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_malloc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o: libcsp/src/arch/freertos/csp_time.c  .generated_files/flags/default/fbffc82883a59efcabbf1b3fa4182c51819201a8 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_time.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_time.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o: libcsp/src/arch/freertos/csp_thread.c  .generated_files/flags/default/da2ca0dd32828312fbaf45240777580783ea1fff .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/arch/freertos" 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/arch/freertos/csp_thread.c  -o ${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/arch/freertos/csp_thread.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o: libcsp/src/crypto/csp_hmac.c  .generated_files/flags/default/a4f0ba2a93d90996fe8eb8ca25c757817b899ada .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_hmac.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_hmac.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o: libcsp/src/crypto/csp_sha1.c  .generated_files/flags/default/f29f0ea0ee232cfeb88caca373c1e13065b2e0e9 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_sha1.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_sha1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o: libcsp/src/crypto/csp_xtea.c  .generated_files/flags/default/adeddd21d9bf2bcea54ede11b2b400f6b32c67ff .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/crypto" 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/crypto/csp_xtea.c  -o ${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/crypto/csp_xtea.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o: libcsp/src/interfaces/csp_if_lo.c  .generated_files/flags/default/f65fce178df223b381a643f3895f3bb012154d4b .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/interfaces" 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/interfaces/csp_if_lo.c  -o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/interfaces/csp_if_lo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o: libcsp/src/interfaces/csp_if_i2c.c  .generated_files/flags/default/ed4d24527227a92d5fb4760658eaa48e17961433 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/interfaces" 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/interfaces/csp_if_i2c.c  -o ${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/interfaces/csp_if_i2c.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o: libcsp/src/rtable/csp_rtable_static.c  .generated_files/flags/default/bd92af8ecd355cb8845412d7b0ee3e3ab77b6450 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/rtable" 
	@${RM} ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/rtable/csp_rtable_static.c  -o ${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/rtable/csp_rtable_static.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/transport/csp_udp.o: libcsp/src/transport/csp_udp.c  .generated_files/flags/default/a7573e3bcca1c5f732a3c9e7c0cf0f5a3cef1c30 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/transport" 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_udp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/transport/csp_udp.c  -o ${OBJECTDIR}/libcsp/src/transport/csp_udp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/transport/csp_udp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/transport/csp_rdp.o: libcsp/src/transport/csp_rdp.c  .generated_files/flags/default/ded0f971fbadc159041e06681fe40d702831fea6 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src/transport" 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/transport/csp_rdp.c  -o ${OBJECTDIR}/libcsp/src/transport/csp_rdp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/transport/csp_rdp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_buffer.o: libcsp/src/csp_buffer.c  .generated_files/flags/default/5fb976675164960d5d789de380366021733136fe .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_buffer.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_buffer.c  -o ${OBJECTDIR}/libcsp/src/csp_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_buffer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_sfp.o: libcsp/src/csp_sfp.c  .generated_files/flags/default/65c9d74eade48b6f366a5c831f47b571485c23ac .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_sfp.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_sfp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_sfp.c  -o ${OBJECTDIR}/libcsp/src/csp_sfp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_sfp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_qfifo.o: libcsp/src/csp_qfifo.c  .generated_files/flags/default/c4fb4c6b5874c53a5c60c20448e757e67626af7f .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_qfifo.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_qfifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_qfifo.c  -o ${OBJECTDIR}/libcsp/src/csp_qfifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_qfifo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_endian.o: libcsp/src/csp_endian.c  .generated_files/flags/default/ac8731e87e523ef6a040993884feb9f84b2bf808 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_endian.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_endian.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_endian.c  -o ${OBJECTDIR}/libcsp/src/csp_endian.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_endian.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_conn.o: libcsp/src/csp_conn.c  .generated_files/flags/default/cb9c93b429c71fbb1332cffba53b96c7acc31519 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_conn.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_conn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_conn.c  -o ${OBJECTDIR}/libcsp/src/csp_conn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_conn.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_iflist.o: libcsp/src/csp_iflist.c  .generated_files/flags/default/a7dcd2328c4e4f335121a6cf5b82929ebf9feaee .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_iflist.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_iflist.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_iflist.c  -o ${OBJECTDIR}/libcsp/src/csp_iflist.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_iflist.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_services.o: libcsp/src/csp_services.c  .generated_files/flags/default/7b8662b9a921b931341c6c99bd241e961293563a .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_services.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_services.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_services.c  -o ${OBJECTDIR}/libcsp/src/csp_services.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_services.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_route.o: libcsp/src/csp_route.c  .generated_files/flags/default/3e32f79843d894790ba830591c32a40ec4e11200 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_route.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_route.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_route.c  -o ${OBJECTDIR}/libcsp/src/csp_route.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_route.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_port.o: libcsp/src/csp_port.c  .generated_files/flags/default/d542788cd297196f1661e42794ec4b83ed5ff8a7 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_port.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_port.c  -o ${OBJECTDIR}/libcsp/src/csp_port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_crc32.o: libcsp/src/csp_crc32.c  .generated_files/flags/default/33e5bc90aaaacc0f6863e1ec7cb8f3429d3801bc .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_crc32.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_crc32.c  -o ${OBJECTDIR}/libcsp/src/csp_crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_crc32.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_promisc.o: libcsp/src/csp_promisc.c  .generated_files/flags/default/25c17999e6aeb5ef6e40cc64d63a64a026c04aef .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_promisc.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_promisc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_promisc.c  -o ${OBJECTDIR}/libcsp/src/csp_promisc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_promisc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_service_handler.o: libcsp/src/csp_service_handler.c  .generated_files/flags/default/aa28d841b8c84cb682af237ea95982022cee2167 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_service_handler.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_service_handler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_service_handler.c  -o ${OBJECTDIR}/libcsp/src/csp_service_handler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_service_handler.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_io.o: libcsp/src/csp_io.c  .generated_files/flags/default/1aea178018ca88fedf95018b8de3a7bd48bdc026 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_io.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_io.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_io.c  -o ${OBJECTDIR}/libcsp/src/csp_io.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_io.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_dedup.o: libcsp/src/csp_dedup.c  .generated_files/flags/default/dba6f1c3ca84f5552e72967a28f17d92e85bbc89 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_dedup.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_dedup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_dedup.c  -o ${OBJECTDIR}/libcsp/src/csp_dedup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_dedup.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_bridge.o: libcsp/src/csp_bridge.c  .generated_files/flags/default/4ce5b074605698911c1dcd19018c9caa3c16fa71 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_bridge.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_bridge.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_bridge.c  -o ${OBJECTDIR}/libcsp/src/csp_bridge.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_bridge.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_hex_dump.o: libcsp/src/csp_hex_dump.c  .generated_files/flags/default/431cc82811a76c88eb2e2f3cdafd35225f3e2a50 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_hex_dump.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_hex_dump.c  -o ${OBJECTDIR}/libcsp/src/csp_hex_dump.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_hex_dump.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/libcsp/src/csp_debug.o: libcsp/src/csp_debug.c  .generated_files/flags/default/fbb11fb28ca6ed5425e5da486fc322dfb1d5db47 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/libcsp/src" 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_debug.o.d 
	@${RM} ${OBJECTDIR}/libcsp/src/csp_debug.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  libcsp/src/csp_debug.c  -o ${OBJECTDIR}/libcsp/src/csp_debug.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/libcsp/src/csp_debug.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/7e76d9f32b07a1cc250432107038d571fc8f8e5c .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/task_test.o: task_test.c  .generated_files/flags/default/5592bb5bd5da28479b0a00b5d93440db39cc49d6 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/task_test.o.d 
	@${RM} ${OBJECTDIR}/task_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  task_test.c  -o ${OBJECTDIR}/task_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/task_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/pic_config.o: pic_config.c  .generated_files/flags/default/573a1ccb67120e01b417e33c9dbc8c1f70d7c834 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pic_config.o.d 
	@${RM} ${OBJECTDIR}/pic_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  pic_config.c  -o ${OBJECTDIR}/pic_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/pic_config.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/serial_comm.o: serial_comm.c  .generated_files/flags/default/ebbda9670b4e85decf2e385d0565cd53c8436ead .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial_comm.o.d 
	@${RM} ${OBJECTDIR}/serial_comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  serial_comm.c  -o ${OBJECTDIR}/serial_comm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/serial_comm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/i2c_comm.o: i2c_comm.c  .generated_files/flags/default/b843afcdee01ed79b46ffeb21a629cbfd375cfb5 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_comm.o.d 
	@${RM} ${OBJECTDIR}/i2c_comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  i2c_comm.c  -o ${OBJECTDIR}/i2c_comm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/i2c_comm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/i2c.o: i2c.c  .generated_files/flags/default/3a97598fc695d0e28a1ae40ed1d3aef1284bf7b .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.o.d 
	@${RM} ${OBJECTDIR}/i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  i2c.c  -o ${OBJECTDIR}/i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/i2c.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/742537886/taskCommunications.o: /home/javier/MPLABXProjects/SbandTRX/taskCommunications.c  .generated_files/flags/default/bf579c6c187af3be2340620bade6d9df8c47c0ea .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/_ext/742537886" 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskCommunications.o.d 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskCommunications.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/taskCommunications.c  -o ${OBJECTDIR}/_ext/742537886/taskCommunications.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/742537886/taskCommunications.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1843642024/init_comsys.o: /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c  .generated_files/flags/default/9e9f8f284f8d97666ed0f434b29266cd8b2b9d7c .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/_ext/1843642024" 
	@${RM} ${OBJECTDIR}/_ext/1843642024/init_comsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843642024/init_comsys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/libcsp/init_comsys.c  -o ${OBJECTDIR}/_ext/1843642024/init_comsys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1843642024/init_comsys.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/742537886/taskConsola.o: /home/javier/MPLABXProjects/SbandTRX/taskConsola.c  .generated_files/flags/default/ed027d5efc5171120570243640ba1ac2f31a0afa .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/_ext/742537886" 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskConsola.o.d 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskConsola.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/taskConsola.c  -o ${OBJECTDIR}/_ext/742537886/taskConsola.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/742537886/taskConsola.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/taskrxhandler.o: taskrxhandler.c  .generated_files/flags/default/830ef5870908cf65cb52718b1c5160d4d80b387a .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/taskrxhandler.o.d 
	@${RM} ${OBJECTDIR}/taskrxhandler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  taskrxhandler.c  -o ${OBJECTDIR}/taskrxhandler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/taskrxhandler.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
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
	
${OBJECTDIR}/_ext/742537886/taskCommunications.o: /home/javier/MPLABXProjects/SbandTRX/taskCommunications.c  .generated_files/flags/default/218d5da4af4f0cf4641a32339c6f4c0a1eb16759 .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/_ext/742537886" 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskCommunications.o.d 
	@${RM} ${OBJECTDIR}/_ext/742537886/taskCommunications.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  /home/javier/MPLABXProjects/SbandTRX/taskCommunications.c  -o ${OBJECTDIR}/_ext/742537886/taskCommunications.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/742537886/taskCommunications.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I"libcsp/include" -I"FreeRTOS/Includes" -I"FreeRTOS/Portable" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99  -mdfp="${DFP_DIR}/xc16"
	
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
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o: FreeRTOS/Portable/portasm_PIC24.S  .generated_files/flags/default/85bf41bd587bce399a2251341eb811b6685a7c9f .generated_files/flags/default/4dfea4184ea9d925c7c2d2fec11ef6d40291c183
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Portable" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  FreeRTOS/Portable/portasm_PIC24.S  -o ${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/FreeRTOS/Portable/portasm_PIC24.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/SbandTRX.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
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
