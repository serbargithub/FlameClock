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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/FireClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/FireClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../fonts/BebasNeue-Regular_30_L1.c ../fonts/fonts.c ../fonts/m12_40_L1.c ../images/HelloWorld_100x100_L1.c ../images/blank_screens_100x100.c ../images/Pepsi_100x100_L1.c ../images/flame_animation1_100x500_L1.c ../images/artstrade_100x100_mono_100x100_L1.c ../images/triden_100x100_L1.c ../Peripferals/peripherals_map.c ../Peripferals/peripherals_HAL.c ../Peripferals/uart_HAL.c ../Peripferals/spi_HAL.c ../interrupts.c ../main_fclock.c ../delays.c ../screen.c ../debugging.c ../fonts/m12_20_L1.c ../clock_task.c ../fonts/BebasNeue-Regular_12_L1.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_30_L1.o ${OBJECTDIR}/_ext/2116421387/fonts.o ${OBJECTDIR}/_ext/2116421387/m12_40_L1.o ${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o ${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o ${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o ${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o ${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o ${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o ${OBJECTDIR}/_ext/1037427530/peripherals_map.o ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o ${OBJECTDIR}/_ext/1037427530/uart_HAL.o ${OBJECTDIR}/_ext/1037427530/spi_HAL.o ${OBJECTDIR}/_ext/1472/interrupts.o ${OBJECTDIR}/_ext/1472/main_fclock.o ${OBJECTDIR}/_ext/1472/delays.o ${OBJECTDIR}/_ext/1472/screen.o ${OBJECTDIR}/_ext/1472/debugging.o ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o ${OBJECTDIR}/_ext/1472/clock_task.o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_30_L1.o.d ${OBJECTDIR}/_ext/2116421387/fonts.o.d ${OBJECTDIR}/_ext/2116421387/m12_40_L1.o.d ${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o.d ${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o.d ${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o.d ${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o.d ${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o.d ${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o.d ${OBJECTDIR}/_ext/1037427530/peripherals_map.o.d ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.d ${OBJECTDIR}/_ext/1037427530/uart_HAL.o.d ${OBJECTDIR}/_ext/1037427530/spi_HAL.o.d ${OBJECTDIR}/_ext/1472/interrupts.o.d ${OBJECTDIR}/_ext/1472/main_fclock.o.d ${OBJECTDIR}/_ext/1472/delays.o.d ${OBJECTDIR}/_ext/1472/screen.o.d ${OBJECTDIR}/_ext/1472/debugging.o.d ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o.d ${OBJECTDIR}/_ext/1472/clock_task.o.d ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_30_L1.o ${OBJECTDIR}/_ext/2116421387/fonts.o ${OBJECTDIR}/_ext/2116421387/m12_40_L1.o ${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o ${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o ${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o ${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o ${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o ${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o ${OBJECTDIR}/_ext/1037427530/peripherals_map.o ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o ${OBJECTDIR}/_ext/1037427530/uart_HAL.o ${OBJECTDIR}/_ext/1037427530/spi_HAL.o ${OBJECTDIR}/_ext/1472/interrupts.o ${OBJECTDIR}/_ext/1472/main_fclock.o ${OBJECTDIR}/_ext/1472/delays.o ${OBJECTDIR}/_ext/1472/screen.o ${OBJECTDIR}/_ext/1472/debugging.o ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o ${OBJECTDIR}/_ext/1472/clock_task.o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o

# Source Files
SOURCEFILES=../fonts/BebasNeue-Regular_30_L1.c ../fonts/fonts.c ../fonts/m12_40_L1.c ../images/HelloWorld_100x100_L1.c ../images/blank_screens_100x100.c ../images/Pepsi_100x100_L1.c ../images/flame_animation1_100x500_L1.c ../images/artstrade_100x100_mono_100x100_L1.c ../images/triden_100x100_L1.c ../Peripferals/peripherals_map.c ../Peripferals/peripherals_HAL.c ../Peripferals/uart_HAL.c ../Peripferals/spi_HAL.c ../interrupts.c ../main_fclock.c ../delays.c ../screen.c ../debugging.c ../fonts/m12_20_L1.c ../clock_task.c ../fonts/BebasNeue-Regular_12_L1.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/FireClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA106
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA106.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_30_L1.o: ../fonts/BebasNeue-Regular_30_L1.c  .generated_files/flags/default/ddb09841c8b48a7450dd93495401ec632f006305 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_30_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_30_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/BebasNeue-Regular_30_L1.c  -o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_30_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_30_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/fonts.o: ../fonts/fonts.c  .generated_files/flags/default/f36f32ada64666138d7426751ef01e8753e174f0 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/fonts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/fonts.c  -o ${OBJECTDIR}/_ext/2116421387/fonts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/fonts.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/m12_40_L1.o: ../fonts/m12_40_L1.c  .generated_files/flags/default/55f653d3dc37eb06c60729101ff5b7bd3142a9c2 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_40_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_40_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/m12_40_L1.c  -o ${OBJECTDIR}/_ext/2116421387/m12_40_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/m12_40_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o: ../images/HelloWorld_100x100_L1.c  .generated_files/flags/default/c1b7d60d9be9d1e0f81aafbeb823cd95e7cb8597 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/HelloWorld_100x100_L1.c  -o ${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o: ../images/blank_screens_100x100.c  .generated_files/flags/default/da8d72b3c27eacb4c9edd0380d0a5bcbb1902c70 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/blank_screens_100x100.c  -o ${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o: ../images/Pepsi_100x100_L1.c  .generated_files/flags/default/8219c5381c16f9877018113ae85fe03d3e071b97 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/Pepsi_100x100_L1.c  -o ${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o: ../images/flame_animation1_100x500_L1.c  .generated_files/flags/default/960b2faef8d38094e0b1827897cc36ea498fd18b .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/flame_animation1_100x500_L1.c  -o ${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o: ../images/artstrade_100x100_mono_100x100_L1.c  .generated_files/flags/default/a30ce629699154891dfd94f778c0f750ea540489 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/artstrade_100x100_mono_100x100_L1.c  -o ${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o: ../images/triden_100x100_L1.c  .generated_files/flags/default/62132e9b23ee02b8e35c005a56e7c617ebb3edf2 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/triden_100x100_L1.c  -o ${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1037427530/peripherals_map.o: ../Peripferals/peripherals_map.c  .generated_files/flags/default/4b6f262d817b5d1091f03d5695e9766fb07d6716 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_map.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_map.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Peripferals/peripherals_map.c  -o ${OBJECTDIR}/_ext/1037427530/peripherals_map.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1037427530/peripherals_map.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o: ../Peripferals/peripherals_HAL.c  .generated_files/flags/default/7a7b7294d6d2f47e42670aee1180f22995d5c6aa .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Peripferals/peripherals_HAL.c  -o ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1037427530/uart_HAL.o: ../Peripferals/uart_HAL.c  .generated_files/flags/default/93496e79ff03e1d149c604584c18f793a3107aa4 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/uart_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/uart_HAL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Peripferals/uart_HAL.c  -o ${OBJECTDIR}/_ext/1037427530/uart_HAL.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1037427530/uart_HAL.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1037427530/spi_HAL.o: ../Peripferals/spi_HAL.c  .generated_files/flags/default/5a3f2974e6cefda801a15d738dbd93c36ff977a3 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/spi_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/spi_HAL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Peripferals/spi_HAL.c  -o ${OBJECTDIR}/_ext/1037427530/spi_HAL.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1037427530/spi_HAL.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/interrupts.o: ../interrupts.c  .generated_files/flags/default/517ffdab6ec3e9f56d72a5a28775dcbb78a3ead8 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../interrupts.c  -o ${OBJECTDIR}/_ext/1472/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/interrupts.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/main_fclock.o: ../main_fclock.c  .generated_files/flags/default/f87b17abadc8f58b28adbd4b852107e8d45bc0e .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_fclock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_fclock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main_fclock.c  -o ${OBJECTDIR}/_ext/1472/main_fclock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/main_fclock.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/delays.o: ../delays.c  .generated_files/flags/default/43985a0d958f4d8f99f81c0358086e210faa081 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/delays.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/delays.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../delays.c  -o ${OBJECTDIR}/_ext/1472/delays.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/delays.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/screen.o: ../screen.c  .generated_files/flags/default/99757be7d93be9cc4f5c8a289803e8d702c121ca .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/screen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../screen.c  -o ${OBJECTDIR}/_ext/1472/screen.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/screen.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/debugging.o: ../debugging.c  .generated_files/flags/default/8447547367b8e2687e36a7b2aed828dccaea041 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/debugging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/debugging.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../debugging.c  -o ${OBJECTDIR}/_ext/1472/debugging.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/debugging.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/m12_20_L1.o: ../fonts/m12_20_L1.c  .generated_files/flags/default/5875f581d15971cc052ff5ac5211262c8cca8696 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/m12_20_L1.c  -o ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/m12_20_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/clock_task.o: ../clock_task.c  .generated_files/flags/default/fade9acfd7cddd4457d7ed713ac280511bd1d506 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/clock_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/clock_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../clock_task.c  -o ${OBJECTDIR}/_ext/1472/clock_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/clock_task.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o: ../fonts/BebasNeue-Regular_12_L1.c  .generated_files/flags/default/23b514bbbb71f7254a1bba6623ec9b97e44697e7 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/BebasNeue-Regular_12_L1.c  -o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_30_L1.o: ../fonts/BebasNeue-Regular_30_L1.c  .generated_files/flags/default/714d339335d708738001056b1cb49877b86660a2 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_30_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_30_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/BebasNeue-Regular_30_L1.c  -o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_30_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_30_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/fonts.o: ../fonts/fonts.c  .generated_files/flags/default/131d33463c344748b458abb6ed119feb03970944 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/fonts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/fonts.c  -o ${OBJECTDIR}/_ext/2116421387/fonts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/fonts.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/m12_40_L1.o: ../fonts/m12_40_L1.c  .generated_files/flags/default/706bcd91e41bc462b84963d897970fe016f75a6 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_40_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_40_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/m12_40_L1.c  -o ${OBJECTDIR}/_ext/2116421387/m12_40_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/m12_40_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o: ../images/HelloWorld_100x100_L1.c  .generated_files/flags/default/ec3565a68e0a9a93dc78046d79c285f30dccf124 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/HelloWorld_100x100_L1.c  -o ${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o: ../images/blank_screens_100x100.c  .generated_files/flags/default/90a49e6499fd37c086c635aaa3c5af2774c39f79 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/blank_screens_100x100.c  -o ${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o: ../images/Pepsi_100x100_L1.c  .generated_files/flags/default/717971af3c03edfbc5d8ca752e4be019f2b7bec9 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/Pepsi_100x100_L1.c  -o ${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o: ../images/flame_animation1_100x500_L1.c  .generated_files/flags/default/cf51eff8d5283db065308309344414b77beb8d96 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/flame_animation1_100x500_L1.c  -o ${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o: ../images/artstrade_100x100_mono_100x100_L1.c  .generated_files/flags/default/26b877c2d9cd46970bae0764072eb5a9c5eea24a .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/artstrade_100x100_mono_100x100_L1.c  -o ${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o: ../images/triden_100x100_L1.c  .generated_files/flags/default/c47f60021aea0557067ea89a64b709cdf969f099 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/triden_100x100_L1.c  -o ${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1037427530/peripherals_map.o: ../Peripferals/peripherals_map.c  .generated_files/flags/default/5537eb7b122651ebeb603a39c98db84c0f68aad8 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_map.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_map.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Peripferals/peripherals_map.c  -o ${OBJECTDIR}/_ext/1037427530/peripherals_map.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1037427530/peripherals_map.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o: ../Peripferals/peripherals_HAL.c  .generated_files/flags/default/4baac30b69d93bb3770b54146c169663ca97fca5 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Peripferals/peripherals_HAL.c  -o ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1037427530/uart_HAL.o: ../Peripferals/uart_HAL.c  .generated_files/flags/default/a82b3272473bcf63365a208c13bbd24797c5f625 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/uart_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/uart_HAL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Peripferals/uart_HAL.c  -o ${OBJECTDIR}/_ext/1037427530/uart_HAL.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1037427530/uart_HAL.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1037427530/spi_HAL.o: ../Peripferals/spi_HAL.c  .generated_files/flags/default/1be39ddd5150db10d603669ec2b14aa10c7c1c .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/spi_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/spi_HAL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Peripferals/spi_HAL.c  -o ${OBJECTDIR}/_ext/1037427530/spi_HAL.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1037427530/spi_HAL.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/interrupts.o: ../interrupts.c  .generated_files/flags/default/d796a0257d21435bd3900be078dc6f9e69d1ec04 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../interrupts.c  -o ${OBJECTDIR}/_ext/1472/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/interrupts.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/main_fclock.o: ../main_fclock.c  .generated_files/flags/default/f684fa16b1e5489aabe9764b619cd5b9ab936f0e .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_fclock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_fclock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main_fclock.c  -o ${OBJECTDIR}/_ext/1472/main_fclock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/main_fclock.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/delays.o: ../delays.c  .generated_files/flags/default/a28eeda16d7077fc2696611ec43d08b6669dc16d .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/delays.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/delays.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../delays.c  -o ${OBJECTDIR}/_ext/1472/delays.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/delays.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/screen.o: ../screen.c  .generated_files/flags/default/23ed6b310d8ab4e5bda0a7656714bd42fdbc30bd .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/screen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../screen.c  -o ${OBJECTDIR}/_ext/1472/screen.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/screen.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/debugging.o: ../debugging.c  .generated_files/flags/default/9638b0c1f49c539b47b3279a96f8ee712392936a .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/debugging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/debugging.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../debugging.c  -o ${OBJECTDIR}/_ext/1472/debugging.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/debugging.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/m12_20_L1.o: ../fonts/m12_20_L1.c  .generated_files/flags/default/6b2ec009661cf2243d4c526bbd7e4417bc928b16 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/m12_20_L1.c  -o ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/m12_20_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/clock_task.o: ../clock_task.c  .generated_files/flags/default/32598fda6357b446a99c2bd3fe43a1dad4c5f1e7 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/clock_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/clock_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../clock_task.c  -o ${OBJECTDIR}/_ext/1472/clock_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/clock_task.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o: ../fonts/BebasNeue-Regular_12_L1.c  .generated_files/flags/default/f8d65f241bf2ebf129745b8f8e048ffca4f21954 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/BebasNeue-Regular_12_L1.c  -o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/FireClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/FireClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--heap=256,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/FireClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/FireClock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=256,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/FireClock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
