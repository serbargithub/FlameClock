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
SOURCEFILES_QUOTED_IF_SPACED=../crypto/AES.s ../crypto/firmware_decoder.c ../fonts/fonts.c ../fonts/m12_20_L1.c ../fonts/BebasNeue-Regular_12_L1.c ../fonts/Antonio-Regular_16_L1.c ../fonts/BebasNeue-Bold_16_L1.c ../fonts/m12_16_L1.c ../graphics/draw.c ../images/HelloWorld_100x100_L1.c ../images/blank_screens_100x100.c ../images/Pepsi_100x100_L1.c ../images/flame_animation1_100x500_L1.c ../images/artstrade_100x100_mono_100x100_L1.c ../images/triden_100x100_L1.c ../Peripferals/peripherals_map.c ../Peripferals/peripherals_HAL.c ../Peripferals/uart_HAL.c ../Peripferals/spi_HAL.c ../Peripferals/rtcc.c ../Peripferals/log_HAL.c ../screens/screens.c ../screens/screen_flame_clock.c ../interrupts.c ../main_fclock.c ../delays.c ../debugging.c ../clock_task.c ../display_utils.c ../log.c ../images/clock1_100x100_L1.c ../screens/screen_analog_clock.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1267346448/AES.o ${OBJECTDIR}/_ext/1267346448/firmware_decoder.o ${OBJECTDIR}/_ext/2116421387/fonts.o ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o ${OBJECTDIR}/_ext/2116421387/Antonio-Regular_16_L1.o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Bold_16_L1.o ${OBJECTDIR}/_ext/2116421387/m12_16_L1.o ${OBJECTDIR}/_ext/455377414/draw.o ${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o ${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o ${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o ${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o ${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o ${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o ${OBJECTDIR}/_ext/1037427530/peripherals_map.o ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o ${OBJECTDIR}/_ext/1037427530/uart_HAL.o ${OBJECTDIR}/_ext/1037427530/spi_HAL.o ${OBJECTDIR}/_ext/1037427530/rtcc.o ${OBJECTDIR}/_ext/1037427530/log_HAL.o ${OBJECTDIR}/_ext/245878840/screens.o ${OBJECTDIR}/_ext/245878840/screen_flame_clock.o ${OBJECTDIR}/_ext/1472/interrupts.o ${OBJECTDIR}/_ext/1472/main_fclock.o ${OBJECTDIR}/_ext/1472/delays.o ${OBJECTDIR}/_ext/1472/debugging.o ${OBJECTDIR}/_ext/1472/clock_task.o ${OBJECTDIR}/_ext/1472/display_utils.o ${OBJECTDIR}/_ext/1472/log.o ${OBJECTDIR}/_ext/1100913241/clock1_100x100_L1.o ${OBJECTDIR}/_ext/245878840/screen_analog_clock.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1267346448/AES.o.d ${OBJECTDIR}/_ext/1267346448/firmware_decoder.o.d ${OBJECTDIR}/_ext/2116421387/fonts.o.d ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o.d ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o.d ${OBJECTDIR}/_ext/2116421387/Antonio-Regular_16_L1.o.d ${OBJECTDIR}/_ext/2116421387/BebasNeue-Bold_16_L1.o.d ${OBJECTDIR}/_ext/2116421387/m12_16_L1.o.d ${OBJECTDIR}/_ext/455377414/draw.o.d ${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o.d ${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o.d ${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o.d ${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o.d ${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o.d ${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o.d ${OBJECTDIR}/_ext/1037427530/peripherals_map.o.d ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.d ${OBJECTDIR}/_ext/1037427530/uart_HAL.o.d ${OBJECTDIR}/_ext/1037427530/spi_HAL.o.d ${OBJECTDIR}/_ext/1037427530/rtcc.o.d ${OBJECTDIR}/_ext/1037427530/log_HAL.o.d ${OBJECTDIR}/_ext/245878840/screens.o.d ${OBJECTDIR}/_ext/245878840/screen_flame_clock.o.d ${OBJECTDIR}/_ext/1472/interrupts.o.d ${OBJECTDIR}/_ext/1472/main_fclock.o.d ${OBJECTDIR}/_ext/1472/delays.o.d ${OBJECTDIR}/_ext/1472/debugging.o.d ${OBJECTDIR}/_ext/1472/clock_task.o.d ${OBJECTDIR}/_ext/1472/display_utils.o.d ${OBJECTDIR}/_ext/1472/log.o.d ${OBJECTDIR}/_ext/1100913241/clock1_100x100_L1.o.d ${OBJECTDIR}/_ext/245878840/screen_analog_clock.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1267346448/AES.o ${OBJECTDIR}/_ext/1267346448/firmware_decoder.o ${OBJECTDIR}/_ext/2116421387/fonts.o ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o ${OBJECTDIR}/_ext/2116421387/Antonio-Regular_16_L1.o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Bold_16_L1.o ${OBJECTDIR}/_ext/2116421387/m12_16_L1.o ${OBJECTDIR}/_ext/455377414/draw.o ${OBJECTDIR}/_ext/1100913241/HelloWorld_100x100_L1.o ${OBJECTDIR}/_ext/1100913241/blank_screens_100x100.o ${OBJECTDIR}/_ext/1100913241/Pepsi_100x100_L1.o ${OBJECTDIR}/_ext/1100913241/flame_animation1_100x500_L1.o ${OBJECTDIR}/_ext/1100913241/artstrade_100x100_mono_100x100_L1.o ${OBJECTDIR}/_ext/1100913241/triden_100x100_L1.o ${OBJECTDIR}/_ext/1037427530/peripherals_map.o ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o ${OBJECTDIR}/_ext/1037427530/uart_HAL.o ${OBJECTDIR}/_ext/1037427530/spi_HAL.o ${OBJECTDIR}/_ext/1037427530/rtcc.o ${OBJECTDIR}/_ext/1037427530/log_HAL.o ${OBJECTDIR}/_ext/245878840/screens.o ${OBJECTDIR}/_ext/245878840/screen_flame_clock.o ${OBJECTDIR}/_ext/1472/interrupts.o ${OBJECTDIR}/_ext/1472/main_fclock.o ${OBJECTDIR}/_ext/1472/delays.o ${OBJECTDIR}/_ext/1472/debugging.o ${OBJECTDIR}/_ext/1472/clock_task.o ${OBJECTDIR}/_ext/1472/display_utils.o ${OBJECTDIR}/_ext/1472/log.o ${OBJECTDIR}/_ext/1100913241/clock1_100x100_L1.o ${OBJECTDIR}/_ext/245878840/screen_analog_clock.o

# Source Files
SOURCEFILES=../crypto/AES.s ../crypto/firmware_decoder.c ../fonts/fonts.c ../fonts/m12_20_L1.c ../fonts/BebasNeue-Regular_12_L1.c ../fonts/Antonio-Regular_16_L1.c ../fonts/BebasNeue-Bold_16_L1.c ../fonts/m12_16_L1.c ../graphics/draw.c ../images/HelloWorld_100x100_L1.c ../images/blank_screens_100x100.c ../images/Pepsi_100x100_L1.c ../images/flame_animation1_100x500_L1.c ../images/artstrade_100x100_mono_100x100_L1.c ../images/triden_100x100_L1.c ../Peripferals/peripherals_map.c ../Peripferals/peripherals_HAL.c ../Peripferals/uart_HAL.c ../Peripferals/spi_HAL.c ../Peripferals/rtcc.c ../Peripferals/log_HAL.c ../screens/screens.c ../screens/screen_flame_clock.c ../interrupts.c ../main_fclock.c ../delays.c ../debugging.c ../clock_task.c ../display_utils.c ../log.c ../images/clock1_100x100_L1.c ../screens/screen_analog_clock.c



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
${OBJECTDIR}/_ext/1267346448/firmware_decoder.o: ../crypto/firmware_decoder.c  .generated_files/flags/default/dd4faf2ce86d65c448875b78d5c610d11b4cc121 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1267346448" 
	@${RM} ${OBJECTDIR}/_ext/1267346448/firmware_decoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267346448/firmware_decoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../crypto/firmware_decoder.c  -o ${OBJECTDIR}/_ext/1267346448/firmware_decoder.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1267346448/firmware_decoder.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/fonts.o: ../fonts/fonts.c  .generated_files/flags/default/f36f32ada64666138d7426751ef01e8753e174f0 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/fonts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/fonts.c  -o ${OBJECTDIR}/_ext/2116421387/fonts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/fonts.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/m12_20_L1.o: ../fonts/m12_20_L1.c  .generated_files/flags/default/5875f581d15971cc052ff5ac5211262c8cca8696 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/m12_20_L1.c  -o ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/m12_20_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o: ../fonts/BebasNeue-Regular_12_L1.c  .generated_files/flags/default/23b514bbbb71f7254a1bba6623ec9b97e44697e7 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/BebasNeue-Regular_12_L1.c  -o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/Antonio-Regular_16_L1.o: ../fonts/Antonio-Regular_16_L1.c  .generated_files/flags/default/2c0cb433a19d86075f8320b6be894e616fbdd6f4 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/Antonio-Regular_16_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/Antonio-Regular_16_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/Antonio-Regular_16_L1.c  -o ${OBJECTDIR}/_ext/2116421387/Antonio-Regular_16_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/Antonio-Regular_16_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/BebasNeue-Bold_16_L1.o: ../fonts/BebasNeue-Bold_16_L1.c  .generated_files/flags/default/92d30d72aacc18a1da3e35cf5f187f2940daa051 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Bold_16_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Bold_16_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/BebasNeue-Bold_16_L1.c  -o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Bold_16_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/BebasNeue-Bold_16_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/m12_16_L1.o: ../fonts/m12_16_L1.c  .generated_files/flags/default/b8dfa7077df79470e5492785bcc1fe3f019f3fe6 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_16_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_16_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/m12_16_L1.c  -o ${OBJECTDIR}/_ext/2116421387/m12_16_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/m12_16_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/455377414/draw.o: ../graphics/draw.c  .generated_files/flags/default/558c993356071fb791ef3a31fbc6b0614cf48844 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/455377414" 
	@${RM} ${OBJECTDIR}/_ext/455377414/draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/455377414/draw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../graphics/draw.c  -o ${OBJECTDIR}/_ext/455377414/draw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/455377414/draw.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	
${OBJECTDIR}/_ext/1037427530/rtcc.o: ../Peripferals/rtcc.c  .generated_files/flags/default/74c960bd6a6e1cf7cf27ce3059b34b60623928ea .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/rtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/rtcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Peripferals/rtcc.c  -o ${OBJECTDIR}/_ext/1037427530/rtcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1037427530/rtcc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1037427530/log_HAL.o: ../Peripferals/log_HAL.c  .generated_files/flags/default/68c69750600e35a56e878441519edb1a8c328cca .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/log_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/log_HAL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Peripferals/log_HAL.c  -o ${OBJECTDIR}/_ext/1037427530/log_HAL.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1037427530/log_HAL.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/245878840/screens.o: ../screens/screens.c  .generated_files/flags/default/78d36b73a54c3c641ff760e91f14a4d274fe3807 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/245878840" 
	@${RM} ${OBJECTDIR}/_ext/245878840/screens.o.d 
	@${RM} ${OBJECTDIR}/_ext/245878840/screens.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../screens/screens.c  -o ${OBJECTDIR}/_ext/245878840/screens.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/245878840/screens.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/245878840/screen_flame_clock.o: ../screens/screen_flame_clock.c  .generated_files/flags/default/fa9510b17dffd475bf52aa6d6d7ca77e41fccdd6 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/245878840" 
	@${RM} ${OBJECTDIR}/_ext/245878840/screen_flame_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/245878840/screen_flame_clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../screens/screen_flame_clock.c  -o ${OBJECTDIR}/_ext/245878840/screen_flame_clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/245878840/screen_flame_clock.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	
${OBJECTDIR}/_ext/1472/debugging.o: ../debugging.c  .generated_files/flags/default/8447547367b8e2687e36a7b2aed828dccaea041 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/debugging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/debugging.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../debugging.c  -o ${OBJECTDIR}/_ext/1472/debugging.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/debugging.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/clock_task.o: ../clock_task.c  .generated_files/flags/default/fade9acfd7cddd4457d7ed713ac280511bd1d506 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/clock_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/clock_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../clock_task.c  -o ${OBJECTDIR}/_ext/1472/clock_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/clock_task.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/display_utils.o: ../display_utils.c  .generated_files/flags/default/728c18b3de6b8b8452d13839eb7a03d344797ad7 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/display_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/display_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../display_utils.c  -o ${OBJECTDIR}/_ext/1472/display_utils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/display_utils.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/log.o: ../log.c  .generated_files/flags/default/19ddbe697eb3a1103240d4c78027340b47eaae3f .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../log.c  -o ${OBJECTDIR}/_ext/1472/log.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/log.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/clock1_100x100_L1.o: ../images/clock1_100x100_L1.c  .generated_files/flags/default/f077fa142ebf65c1d3015ecf2c6c161535c7d314 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/clock1_100x100_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/clock1_100x100_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/clock1_100x100_L1.c  -o ${OBJECTDIR}/_ext/1100913241/clock1_100x100_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/clock1_100x100_L1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/245878840/screen_analog_clock.o: ../screens/screen_analog_clock.c  .generated_files/flags/default/79bdbce3d237c80b01b104f7a572235273d3353a .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/245878840" 
	@${RM} ${OBJECTDIR}/_ext/245878840/screen_analog_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/245878840/screen_analog_clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../screens/screen_analog_clock.c  -o ${OBJECTDIR}/_ext/245878840/screen_analog_clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/245878840/screen_analog_clock.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1267346448/firmware_decoder.o: ../crypto/firmware_decoder.c  .generated_files/flags/default/9399c1b579b87d3c324d36d091e60874c6bc985d .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1267346448" 
	@${RM} ${OBJECTDIR}/_ext/1267346448/firmware_decoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267346448/firmware_decoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../crypto/firmware_decoder.c  -o ${OBJECTDIR}/_ext/1267346448/firmware_decoder.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1267346448/firmware_decoder.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/fonts.o: ../fonts/fonts.c  .generated_files/flags/default/131d33463c344748b458abb6ed119feb03970944 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/fonts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/fonts.c  -o ${OBJECTDIR}/_ext/2116421387/fonts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/fonts.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/m12_20_L1.o: ../fonts/m12_20_L1.c  .generated_files/flags/default/6b2ec009661cf2243d4c526bbd7e4417bc928b16 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/m12_20_L1.c  -o ${OBJECTDIR}/_ext/2116421387/m12_20_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/m12_20_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o: ../fonts/BebasNeue-Regular_12_L1.c  .generated_files/flags/default/f8d65f241bf2ebf129745b8f8e048ffca4f21954 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/BebasNeue-Regular_12_L1.c  -o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/BebasNeue-Regular_12_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/Antonio-Regular_16_L1.o: ../fonts/Antonio-Regular_16_L1.c  .generated_files/flags/default/14ce7220cf55797c13c725ca5086aa52305d4880 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/Antonio-Regular_16_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/Antonio-Regular_16_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/Antonio-Regular_16_L1.c  -o ${OBJECTDIR}/_ext/2116421387/Antonio-Regular_16_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/Antonio-Regular_16_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/BebasNeue-Bold_16_L1.o: ../fonts/BebasNeue-Bold_16_L1.c  .generated_files/flags/default/f7962eac6551ec5af9f21a12f05b2bbd0b0bd4d5 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Bold_16_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/BebasNeue-Bold_16_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/BebasNeue-Bold_16_L1.c  -o ${OBJECTDIR}/_ext/2116421387/BebasNeue-Bold_16_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/BebasNeue-Bold_16_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2116421387/m12_16_L1.o: ../fonts/m12_16_L1.c  .generated_files/flags/default/944bebd096ab98ab4d3a2364f1c759f4602f163e .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/2116421387" 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_16_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116421387/m12_16_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fonts/m12_16_L1.c  -o ${OBJECTDIR}/_ext/2116421387/m12_16_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2116421387/m12_16_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/455377414/draw.o: ../graphics/draw.c  .generated_files/flags/default/ff9bd9da6d0c0e8543bdf3d0dd08651f6c3e3724 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/455377414" 
	@${RM} ${OBJECTDIR}/_ext/455377414/draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/455377414/draw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../graphics/draw.c  -o ${OBJECTDIR}/_ext/455377414/draw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/455377414/draw.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	
${OBJECTDIR}/_ext/1037427530/rtcc.o: ../Peripferals/rtcc.c  .generated_files/flags/default/b5f7b2bf707d75ec1ca9c9264d607bc3216eb680 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/rtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/rtcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Peripferals/rtcc.c  -o ${OBJECTDIR}/_ext/1037427530/rtcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1037427530/rtcc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1037427530/log_HAL.o: ../Peripferals/log_HAL.c  .generated_files/flags/default/6a309dff1f3705944aa5e3b42f8bfaa2b5b291f5 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/log_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/log_HAL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Peripferals/log_HAL.c  -o ${OBJECTDIR}/_ext/1037427530/log_HAL.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1037427530/log_HAL.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/245878840/screens.o: ../screens/screens.c  .generated_files/flags/default/3b4db2bc2e250227c9de30cd1a2828ff4d9f30f5 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/245878840" 
	@${RM} ${OBJECTDIR}/_ext/245878840/screens.o.d 
	@${RM} ${OBJECTDIR}/_ext/245878840/screens.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../screens/screens.c  -o ${OBJECTDIR}/_ext/245878840/screens.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/245878840/screens.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/245878840/screen_flame_clock.o: ../screens/screen_flame_clock.c  .generated_files/flags/default/863d6cbc81bf17652ff96dc5392e26260e22be4e .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/245878840" 
	@${RM} ${OBJECTDIR}/_ext/245878840/screen_flame_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/245878840/screen_flame_clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../screens/screen_flame_clock.c  -o ${OBJECTDIR}/_ext/245878840/screen_flame_clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/245878840/screen_flame_clock.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	
${OBJECTDIR}/_ext/1472/debugging.o: ../debugging.c  .generated_files/flags/default/9638b0c1f49c539b47b3279a96f8ee712392936a .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/debugging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/debugging.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../debugging.c  -o ${OBJECTDIR}/_ext/1472/debugging.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/debugging.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/clock_task.o: ../clock_task.c  .generated_files/flags/default/32598fda6357b446a99c2bd3fe43a1dad4c5f1e7 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/clock_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/clock_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../clock_task.c  -o ${OBJECTDIR}/_ext/1472/clock_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/clock_task.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/display_utils.o: ../display_utils.c  .generated_files/flags/default/80d40dc0b6d5449b6115ecc9fe6d440935f4abe .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/display_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/display_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../display_utils.c  -o ${OBJECTDIR}/_ext/1472/display_utils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/display_utils.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/log.o: ../log.c  .generated_files/flags/default/84fc4fb17f67a7143eaa17b05a62594027863063 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../log.c  -o ${OBJECTDIR}/_ext/1472/log.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/log.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1100913241/clock1_100x100_L1.o: ../images/clock1_100x100_L1.c  .generated_files/flags/default/9c91a446d93c14b3f098071460ee37c400d7597e .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1100913241" 
	@${RM} ${OBJECTDIR}/_ext/1100913241/clock1_100x100_L1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1100913241/clock1_100x100_L1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../images/clock1_100x100_L1.c  -o ${OBJECTDIR}/_ext/1100913241/clock1_100x100_L1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1100913241/clock1_100x100_L1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/245878840/screen_analog_clock.o: ../screens/screen_analog_clock.c  .generated_files/flags/default/3330534948344a3c9ff35db53b555331375c3a4e .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/245878840" 
	@${RM} ${OBJECTDIR}/_ext/245878840/screen_analog_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/245878840/screen_analog_clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../screens/screen_analog_clock.c  -o ${OBJECTDIR}/_ext/245878840/screen_analog_clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/245878840/screen_analog_clock.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1267346448/AES.o: ../crypto/AES.s  .generated_files/flags/default/85a0b2c079a7fc0e5d56e89854851a7c81f287e0 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1267346448" 
	@${RM} ${OBJECTDIR}/_ext/1267346448/AES.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267346448/AES.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../crypto/AES.s  -o ${OBJECTDIR}/_ext/1267346448/AES.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/_ext/1267346448/AES.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1267346448/AES.o: ../crypto/AES.s  .generated_files/flags/default/589dcc308f76f7fc516d06ce10b61f52da0b123f .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1267346448" 
	@${RM} ${OBJECTDIR}/_ext/1267346448/AES.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267346448/AES.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../crypto/AES.s  -o ${OBJECTDIR}/_ext/1267346448/AES.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/_ext/1267346448/AES.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
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
