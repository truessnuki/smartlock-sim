################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/nuki/sal/settings/subdir.mk
-include src/nuki/sal/logging/subdir.mk
-include src/nuki/sal/keyturn_ctrl/subdir.mk
-include src/nuki/pl/subdir.mk
-include src/nuki/hal/util/subdir.mk
-include src/nuki/hal/uart/subdir.mk
-include src/nuki/hal/turn_eng/subdir.mk
-include src/nuki/hal/led/subdir.mk
-include src/nuki/hal/hall_sensor/subdir.mk
-include src/nuki/hal/clutch_eng/subdir.mk
-include src/nuki/hal/clock/subdir.mk
-include src/nuki/hal/adc/subdir.mk
-include src/nuki/hal/subdir.mk
-include src/nuki/app/dispatcher/subdir.mk
-include src/nuki/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: smartlock-sim.exe

# Tool invocations
smartlock-sim.exe: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cygwin C Linker'
	gcc  -o "smartlock-sim.exe" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) smartlock-sim.exe
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
