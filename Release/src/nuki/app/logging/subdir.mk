################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/nuki/app/logging/logging.c 

OBJS += \
./src/nuki/app/logging/logging.o 

C_DEPS += \
./src/nuki/app/logging/logging.d 


# Each subdirectory must supply rules for building sources it contributes
src/nuki/app/logging/%.o: ../src/nuki/app/logging/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -DSIMULATION -DWIN32 -I"../src/nuki" -O3 -Wall -c -fmessage-length=0 -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


