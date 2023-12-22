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
FINAL_IMAGE=${DISTDIR}/smart_lamp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/smart_lamp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/actuators/leds.c src/adc/adc.c src/protocols/UART/uart.c src/protocols/SPI/spi-master-v1.c src/protocols/I2C/i2c-v2.c src/pwm/pwm.c src/sensors/co2.c src/sensors/humidity.c src/sensors/luminosity.c src/sensors/noise.c src/sensors/temperature.c src/timers/tmr0.c src/timers/tmr2.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/actuators/leds.p1 ${OBJECTDIR}/src/adc/adc.p1 ${OBJECTDIR}/src/protocols/UART/uart.p1 ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1 ${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1 ${OBJECTDIR}/src/pwm/pwm.p1 ${OBJECTDIR}/src/sensors/co2.p1 ${OBJECTDIR}/src/sensors/humidity.p1 ${OBJECTDIR}/src/sensors/luminosity.p1 ${OBJECTDIR}/src/sensors/noise.p1 ${OBJECTDIR}/src/sensors/temperature.p1 ${OBJECTDIR}/src/timers/tmr0.p1 ${OBJECTDIR}/src/timers/tmr2.p1 ${OBJECTDIR}/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/src/actuators/leds.p1.d ${OBJECTDIR}/src/adc/adc.p1.d ${OBJECTDIR}/src/protocols/UART/uart.p1.d ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1.d ${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1.d ${OBJECTDIR}/src/pwm/pwm.p1.d ${OBJECTDIR}/src/sensors/co2.p1.d ${OBJECTDIR}/src/sensors/humidity.p1.d ${OBJECTDIR}/src/sensors/luminosity.p1.d ${OBJECTDIR}/src/sensors/noise.p1.d ${OBJECTDIR}/src/sensors/temperature.p1.d ${OBJECTDIR}/src/timers/tmr0.p1.d ${OBJECTDIR}/src/timers/tmr2.p1.d ${OBJECTDIR}/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/actuators/leds.p1 ${OBJECTDIR}/src/adc/adc.p1 ${OBJECTDIR}/src/protocols/UART/uart.p1 ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1 ${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1 ${OBJECTDIR}/src/pwm/pwm.p1 ${OBJECTDIR}/src/sensors/co2.p1 ${OBJECTDIR}/src/sensors/humidity.p1 ${OBJECTDIR}/src/sensors/luminosity.p1 ${OBJECTDIR}/src/sensors/noise.p1 ${OBJECTDIR}/src/sensors/temperature.p1 ${OBJECTDIR}/src/timers/tmr0.p1 ${OBJECTDIR}/src/timers/tmr2.p1 ${OBJECTDIR}/main.p1

# Source Files
SOURCEFILES=src/actuators/leds.c src/adc/adc.c src/protocols/UART/uart.c src/protocols/SPI/spi-master-v1.c src/protocols/I2C/i2c-v2.c src/pwm/pwm.c src/sensors/co2.c src/sensors/humidity.c src/sensors/luminosity.c src/sensors/noise.c src/sensors/temperature.c src/timers/tmr0.c src/timers/tmr2.c main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/smart_lamp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F886
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/actuators/leds.p1: src/actuators/leds.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/actuators" 
	@${RM} ${OBJECTDIR}/src/actuators/leds.p1.d 
	@${RM} ${OBJECTDIR}/src/actuators/leds.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/actuators/leds.p1 src/actuators/leds.c 
	@-${MV} ${OBJECTDIR}/src/actuators/leds.d ${OBJECTDIR}/src/actuators/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/actuators/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/adc/adc.p1: src/adc/adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/adc" 
	@${RM} ${OBJECTDIR}/src/adc/adc.p1.d 
	@${RM} ${OBJECTDIR}/src/adc/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/adc/adc.p1 src/adc/adc.c 
	@-${MV} ${OBJECTDIR}/src/adc/adc.d ${OBJECTDIR}/src/adc/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/adc/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/protocols/UART/uart.p1: src/protocols/UART/uart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/protocols/UART" 
	@${RM} ${OBJECTDIR}/src/protocols/UART/uart.p1.d 
	@${RM} ${OBJECTDIR}/src/protocols/UART/uart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/protocols/UART/uart.p1 src/protocols/UART/uart.c 
	@-${MV} ${OBJECTDIR}/src/protocols/UART/uart.d ${OBJECTDIR}/src/protocols/UART/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/protocols/UART/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1: src/protocols/SPI/spi-master-v1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/protocols/SPI" 
	@${RM} ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1.d 
	@${RM} ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1 src/protocols/SPI/spi-master-v1.c 
	@-${MV} ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.d ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1: src/protocols/I2C/i2c-v2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/protocols/I2C" 
	@${RM} ${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1.d 
	@${RM} ${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1 src/protocols/I2C/i2c-v2.c 
	@-${MV} ${OBJECTDIR}/src/protocols/I2C/i2c-v2.d ${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/pwm/pwm.p1: src/pwm/pwm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/pwm" 
	@${RM} ${OBJECTDIR}/src/pwm/pwm.p1.d 
	@${RM} ${OBJECTDIR}/src/pwm/pwm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/pwm/pwm.p1 src/pwm/pwm.c 
	@-${MV} ${OBJECTDIR}/src/pwm/pwm.d ${OBJECTDIR}/src/pwm/pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/pwm/pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/sensors/co2.p1: src/sensors/co2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/sensors" 
	@${RM} ${OBJECTDIR}/src/sensors/co2.p1.d 
	@${RM} ${OBJECTDIR}/src/sensors/co2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/sensors/co2.p1 src/sensors/co2.c 
	@-${MV} ${OBJECTDIR}/src/sensors/co2.d ${OBJECTDIR}/src/sensors/co2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/sensors/co2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/sensors/humidity.p1: src/sensors/humidity.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/sensors" 
	@${RM} ${OBJECTDIR}/src/sensors/humidity.p1.d 
	@${RM} ${OBJECTDIR}/src/sensors/humidity.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/sensors/humidity.p1 src/sensors/humidity.c 
	@-${MV} ${OBJECTDIR}/src/sensors/humidity.d ${OBJECTDIR}/src/sensors/humidity.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/sensors/humidity.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/sensors/luminosity.p1: src/sensors/luminosity.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/sensors" 
	@${RM} ${OBJECTDIR}/src/sensors/luminosity.p1.d 
	@${RM} ${OBJECTDIR}/src/sensors/luminosity.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/sensors/luminosity.p1 src/sensors/luminosity.c 
	@-${MV} ${OBJECTDIR}/src/sensors/luminosity.d ${OBJECTDIR}/src/sensors/luminosity.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/sensors/luminosity.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/sensors/noise.p1: src/sensors/noise.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/sensors" 
	@${RM} ${OBJECTDIR}/src/sensors/noise.p1.d 
	@${RM} ${OBJECTDIR}/src/sensors/noise.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/sensors/noise.p1 src/sensors/noise.c 
	@-${MV} ${OBJECTDIR}/src/sensors/noise.d ${OBJECTDIR}/src/sensors/noise.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/sensors/noise.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/sensors/temperature.p1: src/sensors/temperature.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/sensors" 
	@${RM} ${OBJECTDIR}/src/sensors/temperature.p1.d 
	@${RM} ${OBJECTDIR}/src/sensors/temperature.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/sensors/temperature.p1 src/sensors/temperature.c 
	@-${MV} ${OBJECTDIR}/src/sensors/temperature.d ${OBJECTDIR}/src/sensors/temperature.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/sensors/temperature.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/timers/tmr0.p1: src/timers/tmr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/timers" 
	@${RM} ${OBJECTDIR}/src/timers/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/src/timers/tmr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/timers/tmr0.p1 src/timers/tmr0.c 
	@-${MV} ${OBJECTDIR}/src/timers/tmr0.d ${OBJECTDIR}/src/timers/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/timers/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/timers/tmr2.p1: src/timers/tmr2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/timers" 
	@${RM} ${OBJECTDIR}/src/timers/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/src/timers/tmr2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/timers/tmr2.p1 src/timers/tmr2.c 
	@-${MV} ${OBJECTDIR}/src/timers/tmr2.d ${OBJECTDIR}/src/timers/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/timers/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/src/actuators/leds.p1: src/actuators/leds.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/actuators" 
	@${RM} ${OBJECTDIR}/src/actuators/leds.p1.d 
	@${RM} ${OBJECTDIR}/src/actuators/leds.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/actuators/leds.p1 src/actuators/leds.c 
	@-${MV} ${OBJECTDIR}/src/actuators/leds.d ${OBJECTDIR}/src/actuators/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/actuators/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/adc/adc.p1: src/adc/adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/adc" 
	@${RM} ${OBJECTDIR}/src/adc/adc.p1.d 
	@${RM} ${OBJECTDIR}/src/adc/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/adc/adc.p1 src/adc/adc.c 
	@-${MV} ${OBJECTDIR}/src/adc/adc.d ${OBJECTDIR}/src/adc/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/adc/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/protocols/UART/uart.p1: src/protocols/UART/uart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/protocols/UART" 
	@${RM} ${OBJECTDIR}/src/protocols/UART/uart.p1.d 
	@${RM} ${OBJECTDIR}/src/protocols/UART/uart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/protocols/UART/uart.p1 src/protocols/UART/uart.c 
	@-${MV} ${OBJECTDIR}/src/protocols/UART/uart.d ${OBJECTDIR}/src/protocols/UART/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/protocols/UART/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1: src/protocols/SPI/spi-master-v1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/protocols/SPI" 
	@${RM} ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1.d 
	@${RM} ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1 src/protocols/SPI/spi-master-v1.c 
	@-${MV} ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.d ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/protocols/SPI/spi-master-v1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1: src/protocols/I2C/i2c-v2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/protocols/I2C" 
	@${RM} ${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1.d 
	@${RM} ${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1 src/protocols/I2C/i2c-v2.c 
	@-${MV} ${OBJECTDIR}/src/protocols/I2C/i2c-v2.d ${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/protocols/I2C/i2c-v2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/pwm/pwm.p1: src/pwm/pwm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/pwm" 
	@${RM} ${OBJECTDIR}/src/pwm/pwm.p1.d 
	@${RM} ${OBJECTDIR}/src/pwm/pwm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/pwm/pwm.p1 src/pwm/pwm.c 
	@-${MV} ${OBJECTDIR}/src/pwm/pwm.d ${OBJECTDIR}/src/pwm/pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/pwm/pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/sensors/co2.p1: src/sensors/co2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/sensors" 
	@${RM} ${OBJECTDIR}/src/sensors/co2.p1.d 
	@${RM} ${OBJECTDIR}/src/sensors/co2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/sensors/co2.p1 src/sensors/co2.c 
	@-${MV} ${OBJECTDIR}/src/sensors/co2.d ${OBJECTDIR}/src/sensors/co2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/sensors/co2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/sensors/humidity.p1: src/sensors/humidity.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/sensors" 
	@${RM} ${OBJECTDIR}/src/sensors/humidity.p1.d 
	@${RM} ${OBJECTDIR}/src/sensors/humidity.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/sensors/humidity.p1 src/sensors/humidity.c 
	@-${MV} ${OBJECTDIR}/src/sensors/humidity.d ${OBJECTDIR}/src/sensors/humidity.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/sensors/humidity.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/sensors/luminosity.p1: src/sensors/luminosity.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/sensors" 
	@${RM} ${OBJECTDIR}/src/sensors/luminosity.p1.d 
	@${RM} ${OBJECTDIR}/src/sensors/luminosity.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/sensors/luminosity.p1 src/sensors/luminosity.c 
	@-${MV} ${OBJECTDIR}/src/sensors/luminosity.d ${OBJECTDIR}/src/sensors/luminosity.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/sensors/luminosity.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/sensors/noise.p1: src/sensors/noise.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/sensors" 
	@${RM} ${OBJECTDIR}/src/sensors/noise.p1.d 
	@${RM} ${OBJECTDIR}/src/sensors/noise.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/sensors/noise.p1 src/sensors/noise.c 
	@-${MV} ${OBJECTDIR}/src/sensors/noise.d ${OBJECTDIR}/src/sensors/noise.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/sensors/noise.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/sensors/temperature.p1: src/sensors/temperature.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/sensors" 
	@${RM} ${OBJECTDIR}/src/sensors/temperature.p1.d 
	@${RM} ${OBJECTDIR}/src/sensors/temperature.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/sensors/temperature.p1 src/sensors/temperature.c 
	@-${MV} ${OBJECTDIR}/src/sensors/temperature.d ${OBJECTDIR}/src/sensors/temperature.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/sensors/temperature.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/timers/tmr0.p1: src/timers/tmr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/timers" 
	@${RM} ${OBJECTDIR}/src/timers/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/src/timers/tmr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/timers/tmr0.p1 src/timers/tmr0.c 
	@-${MV} ${OBJECTDIR}/src/timers/tmr0.d ${OBJECTDIR}/src/timers/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/timers/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/timers/tmr2.p1: src/timers/tmr2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/timers" 
	@${RM} ${OBJECTDIR}/src/timers/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/src/timers/tmr2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/src/timers/tmr2.p1 src/timers/tmr2.c 
	@-${MV} ${OBJECTDIR}/src/timers/tmr2.d ${OBJECTDIR}/src/timers/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/timers/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

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
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/smart_lamp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/smart_lamp.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=pickit3  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -mrom=default,-1f00-1ffe -mram=default,-0-0,-70-70,-80-80,-f0-f0,-100-100,-170-170,-180-180,-1e5-1f0  $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/smart_lamp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/smart_lamp.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/smart_lamp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/smart_lamp.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/smart_lamp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
