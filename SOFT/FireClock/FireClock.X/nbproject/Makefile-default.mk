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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FireClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FireClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../Peripferals/peripherals_map.c ../Peripferals/peripherals_HAL.c ../Peripferals/uart_HAL.c ../Peripferals/spi_HAL.c ../interrupts.c ../main_fclock.c ../delays.c ../screens_static.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1037427530/peripherals_map.o ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o ${OBJECTDIR}/_ext/1037427530/uart_HAL.o ${OBJECTDIR}/_ext/1037427530/spi_HAL.o ${OBJECTDIR}/_ext/1472/interrupts.o ${OBJECTDIR}/_ext/1472/main_fclock.o ${OBJECTDIR}/_ext/1472/delays.o ${OBJECTDIR}/_ext/1472/screens_static.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1037427530/peripherals_map.o.d ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.d ${OBJECTDIR}/_ext/1037427530/uart_HAL.o.d ${OBJECTDIR}/_ext/1037427530/spi_HAL.o.d ${OBJECTDIR}/_ext/1472/interrupts.o.d ${OBJECTDIR}/_ext/1472/main_fclock.o.d ${OBJECTDIR}/_ext/1472/delays.o.d ${OBJECTDIR}/_ext/1472/screens_static.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1037427530/peripherals_map.o ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o ${OBJECTDIR}/_ext/1037427530/uart_HAL.o ${OBJECTDIR}/_ext/1037427530/spi_HAL.o ${OBJECTDIR}/_ext/1472/interrupts.o ${OBJECTDIR}/_ext/1472/main_fclock.o ${OBJECTDIR}/_ext/1472/delays.o ${OBJECTDIR}/_ext/1472/screens_static.o

# Source Files
SOURCEFILES=../Peripferals/peripherals_map.c ../Peripferals/peripherals_HAL.c ../Peripferals/uart_HAL.c ../Peripferals/spi_HAL.c ../interrupts.c ../main_fclock.c ../delays.c ../screens_static.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/FireClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA106
MP_LINKER_FILE_OPTION=,-Tp24FJ128GA106.gld
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
${OBJECTDIR}/_ext/1037427530/peripherals_map.o: ../Peripferals/peripherals_map.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_map.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_map.o.ok ${OBJECTDIR}/_ext/1037427530/peripherals_map.o.err 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_map.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1037427530/peripherals_map.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1037427530/peripherals_map.o.d" -o ${OBJECTDIR}/_ext/1037427530/peripherals_map.o ../Peripferals/peripherals_map.c    
	
${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o: ../Peripferals/peripherals_HAL.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.ok ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.err 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.d" -o ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o ../Peripferals/peripherals_HAL.c    
	
${OBJECTDIR}/_ext/1037427530/uart_HAL.o: ../Peripferals/uart_HAL.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/uart_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/uart_HAL.o.ok ${OBJECTDIR}/_ext/1037427530/uart_HAL.o.err 
	@${RM} ${OBJECTDIR}/_ext/1037427530/uart_HAL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1037427530/uart_HAL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1037427530/uart_HAL.o.d" -o ${OBJECTDIR}/_ext/1037427530/uart_HAL.o ../Peripferals/uart_HAL.c    
	
${OBJECTDIR}/_ext/1037427530/spi_HAL.o: ../Peripferals/spi_HAL.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/spi_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/spi_HAL.o.ok ${OBJECTDIR}/_ext/1037427530/spi_HAL.o.err 
	@${RM} ${OBJECTDIR}/_ext/1037427530/spi_HAL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1037427530/spi_HAL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1037427530/spi_HAL.o.d" -o ${OBJECTDIR}/_ext/1037427530/spi_HAL.o ../Peripferals/spi_HAL.c    
	
${OBJECTDIR}/_ext/1472/interrupts.o: ../interrupts.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o.ok ${OBJECTDIR}/_ext/1472/interrupts.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/interrupts.o.d" -o ${OBJECTDIR}/_ext/1472/interrupts.o ../interrupts.c    
	
${OBJECTDIR}/_ext/1472/main_fclock.o: ../main_fclock.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_fclock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_fclock.o.ok ${OBJECTDIR}/_ext/1472/main_fclock.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/main_fclock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main_fclock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main_fclock.o.d" -o ${OBJECTDIR}/_ext/1472/main_fclock.o ../main_fclock.c    
	
${OBJECTDIR}/_ext/1472/delays.o: ../delays.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/delays.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/delays.o.ok ${OBJECTDIR}/_ext/1472/delays.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/delays.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/delays.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/delays.o.d" -o ${OBJECTDIR}/_ext/1472/delays.o ../delays.c    
	
${OBJECTDIR}/_ext/1472/screens_static.o: ../screens_static.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/screens_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/screens_static.o.ok ${OBJECTDIR}/_ext/1472/screens_static.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/screens_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/screens_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/screens_static.o.d" -o ${OBJECTDIR}/_ext/1472/screens_static.o ../screens_static.c    
	
else
${OBJECTDIR}/_ext/1037427530/peripherals_map.o: ../Peripferals/peripherals_map.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_map.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_map.o.ok ${OBJECTDIR}/_ext/1037427530/peripherals_map.o.err 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_map.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1037427530/peripherals_map.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1037427530/peripherals_map.o.d" -o ${OBJECTDIR}/_ext/1037427530/peripherals_map.o ../Peripferals/peripherals_map.c    
	
${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o: ../Peripferals/peripherals_HAL.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.ok ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.err 
	@${RM} ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o.d" -o ${OBJECTDIR}/_ext/1037427530/peripherals_HAL.o ../Peripferals/peripherals_HAL.c    
	
${OBJECTDIR}/_ext/1037427530/uart_HAL.o: ../Peripferals/uart_HAL.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/uart_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/uart_HAL.o.ok ${OBJECTDIR}/_ext/1037427530/uart_HAL.o.err 
	@${RM} ${OBJECTDIR}/_ext/1037427530/uart_HAL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1037427530/uart_HAL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1037427530/uart_HAL.o.d" -o ${OBJECTDIR}/_ext/1037427530/uart_HAL.o ../Peripferals/uart_HAL.c    
	
${OBJECTDIR}/_ext/1037427530/spi_HAL.o: ../Peripferals/spi_HAL.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1037427530" 
	@${RM} ${OBJECTDIR}/_ext/1037427530/spi_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037427530/spi_HAL.o.ok ${OBJECTDIR}/_ext/1037427530/spi_HAL.o.err 
	@${RM} ${OBJECTDIR}/_ext/1037427530/spi_HAL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1037427530/spi_HAL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1037427530/spi_HAL.o.d" -o ${OBJECTDIR}/_ext/1037427530/spi_HAL.o ../Peripferals/spi_HAL.c    
	
${OBJECTDIR}/_ext/1472/interrupts.o: ../interrupts.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o.ok ${OBJECTDIR}/_ext/1472/interrupts.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/interrupts.o.d" -o ${OBJECTDIR}/_ext/1472/interrupts.o ../interrupts.c    
	
${OBJECTDIR}/_ext/1472/main_fclock.o: ../main_fclock.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_fclock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_fclock.o.ok ${OBJECTDIR}/_ext/1472/main_fclock.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/main_fclock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main_fclock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main_fclock.o.d" -o ${OBJECTDIR}/_ext/1472/main_fclock.o ../main_fclock.c    
	
${OBJECTDIR}/_ext/1472/delays.o: ../delays.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/delays.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/delays.o.ok ${OBJECTDIR}/_ext/1472/delays.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/delays.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/delays.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/delays.o.d" -o ${OBJECTDIR}/_ext/1472/delays.o ../delays.c    
	
${OBJECTDIR}/_ext/1472/screens_static.o: ../screens_static.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/screens_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/screens_static.o.ok ${OBJECTDIR}/_ext/1472/screens_static.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/screens_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/screens_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/screens_static.o.d" -o ${OBJECTDIR}/_ext/1472/screens_static.o ../screens_static.c    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/FireClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/FireClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=256,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/FireClock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FireClock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=256,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/FireClock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default
