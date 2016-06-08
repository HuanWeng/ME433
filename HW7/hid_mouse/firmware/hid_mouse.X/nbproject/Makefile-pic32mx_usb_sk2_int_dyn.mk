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
ifeq "$(wildcard nbproject/Makefile-local-pic32mx_usb_sk2_int_dyn.mk)" "nbproject/Makefile-local-pic32mx_usb_sk2_int_dyn.mk"
include nbproject/Makefile-local-pic32mx_usb_sk2_int_dyn.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mx_usb_sk2_int_dyn
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/hid_mouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/hid_mouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_static.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c ../src/app.c ../src/main.c ../src/mouse.c ../../../../../../bsp/pic32mx_usb_sk2/bsp_sys_init.c ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../../../../../../framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/ports/src/sys_ports.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/usb/src/dynamic/usb_device_hid.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/102310384/sys_clk_static.o ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o ${OBJECTDIR}/_ext/1774247193/system_init.o ${OBJECTDIR}/_ext/1774247193/system_interrupt.o ${OBJECTDIR}/_ext/1774247193/system_exceptions.o ${OBJECTDIR}/_ext/1774247193/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/mouse.o ${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/1653354328/sys_ports.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/692885480/usb_device_hid.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/102310384/sys_clk_static.o.d ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d ${OBJECTDIR}/_ext/1774247193/system_init.o.d ${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d ${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d ${OBJECTDIR}/_ext/1774247193/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/mouse.o.d ${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o.d ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1653354328/sys_ports.o.d ${OBJECTDIR}/_ext/692885480/usb_device.o.d ${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/102310384/sys_clk_static.o ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o ${OBJECTDIR}/_ext/1774247193/system_init.o ${OBJECTDIR}/_ext/1774247193/system_interrupt.o ${OBJECTDIR}/_ext/1774247193/system_exceptions.o ${OBJECTDIR}/_ext/1774247193/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/mouse.o ${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/1653354328/sys_ports.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/692885480/usb_device_hid.o

# Source Files
SOURCEFILES=../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_static.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c ../src/app.c ../src/main.c ../src/mouse.c ../../../../../../bsp/pic32mx_usb_sk2/bsp_sys_init.c ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../../../../../../framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/ports/src/sys_ports.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/usb/src/dynamic/usb_device_hid.c


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
	${MAKE}  -f nbproject/Makefile-pic32mx_usb_sk2_int_dyn.mk dist/${CND_CONF}/${IMAGE_TYPE}/hid_mouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX250F128B
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/102310384/sys_clk_static.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/102310384" 
	@${RM} ${OBJECTDIR}/_ext/102310384/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/102310384/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/102310384/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/102310384/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/102310384/sys_clk_static.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_static.c     
	
${OBJECTDIR}/_ext/1956551008/sys_ports_static.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1956551008" 
	@${RM} ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c     
	
${OBJECTDIR}/_ext/1774247193/system_init.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_init.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_init.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c     
	
${OBJECTDIR}/_ext/1774247193/system_interrupt.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_interrupt.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c     
	
${OBJECTDIR}/_ext/1774247193/system_exceptions.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_exceptions.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c     
	
${OBJECTDIR}/_ext/1774247193/system_tasks.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_tasks.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c     
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c     
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c     
	
${OBJECTDIR}/_ext/1360937237/mouse.o: ../src/mouse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mouse.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mouse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mouse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/mouse.o.d" -o ${OBJECTDIR}/_ext/1360937237/mouse.o ../src/mouse.c     
	
${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o: ../../../../../../bsp/pic32mx_usb_sk2/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1979166340" 
	@${RM} ${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o ../../../../../../bsp/pic32mx_usb_sk2/bsp_sys_init.c     
	
${OBJECTDIR}/_ext/1585079243/drv_usbfs.o: ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1585079243" 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c     
	
${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o: ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1585079243" 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c     
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mx.c     
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c     
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c     
	
${OBJECTDIR}/_ext/1653354328/sys_ports.o: ../../../../../../framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1653354328" 
	@${RM} ${OBJECTDIR}/_ext/1653354328/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1653354328/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1653354328/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1653354328/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1653354328/sys_ports.o ../../../../../../framework/system/ports/src/sys_ports.c     
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c     
	
${OBJECTDIR}/_ext/692885480/usb_device_hid.o: ../../../../../../framework/usb/src/dynamic/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_hid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_hid.o ../../../../../../framework/usb/src/dynamic/usb_device_hid.c     
	
else
${OBJECTDIR}/_ext/102310384/sys_clk_static.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/102310384" 
	@${RM} ${OBJECTDIR}/_ext/102310384/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/102310384/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/102310384/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/102310384/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/102310384/sys_clk_static.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_static.c     
	
${OBJECTDIR}/_ext/1956551008/sys_ports_static.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1956551008" 
	@${RM} ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c     
	
${OBJECTDIR}/_ext/1774247193/system_init.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_init.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_init.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c     
	
${OBJECTDIR}/_ext/1774247193/system_interrupt.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_interrupt.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c     
	
${OBJECTDIR}/_ext/1774247193/system_exceptions.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_exceptions.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c     
	
${OBJECTDIR}/_ext/1774247193/system_tasks.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_tasks.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c     
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c     
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c     
	
${OBJECTDIR}/_ext/1360937237/mouse.o: ../src/mouse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mouse.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mouse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mouse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/mouse.o.d" -o ${OBJECTDIR}/_ext/1360937237/mouse.o ../src/mouse.c     
	
${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o: ../../../../../../bsp/pic32mx_usb_sk2/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1979166340" 
	@${RM} ${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/1979166340/bsp_sys_init.o ../../../../../../bsp/pic32mx_usb_sk2/bsp_sys_init.c     
	
${OBJECTDIR}/_ext/1585079243/drv_usbfs.o: ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1585079243" 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c     
	
${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o: ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1585079243" 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c     
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mx.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mx.c     
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c     
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c     
	
${OBJECTDIR}/_ext/1653354328/sys_ports.o: ../../../../../../framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1653354328" 
	@${RM} ${OBJECTDIR}/_ext/1653354328/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1653354328/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1653354328/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/1653354328/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1653354328/sys_ports.o ../../../../../../framework/system/ports/src/sys_ports.c     
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c     
	
${OBJECTDIR}/_ext/692885480/usb_device_hid.o: ../../../../../../framework/usb/src/dynamic/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_hid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../../../../../../framework/system/common" -I"../../../../../../framework/system/devcon" -I"../../../../../../framework/system/int" -I"../../../../../../framework/system" -I"../../../../../../framework/driver/usb" -I"../../../../../../framework/usb" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_usb_sk2" -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_hid.o ../../../../../../framework/usb/src/dynamic/usb_device_hid.c     
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/hid_mouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/hid_mouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a          -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/hid_mouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/hid_mouse.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/hid_mouse.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mx_usb_sk2_int_dyn
	${RM} -r dist/pic32mx_usb_sk2_int_dyn

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
