################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/nuki/sal/logging/logging.c 

OBJS += \
./src/nuki/sal/logging/logging.o 

C_DEPS += \
./src/nuki/sal/logging/logging.d 


# Each subdirectory must supply rules for building sources it contributes
src/nuki/sal/logging/%.o: ../src/nuki/sal/logging/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -std=c99 -DWIN64 -DSIMULATION -I../src/nuki -O0 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


