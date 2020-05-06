################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/nuki/app/settings/settings.c 

OBJS += \
./src/nuki/app/settings/settings.o 

C_DEPS += \
./src/nuki/app/settings/settings.d 


# Each subdirectory must supply rules for building sources it contributes
src/nuki/app/settings/%.o: ../src/nuki/app/settings/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -std=c99 -DWIN64 -DSIMULATION -I../src/nuki -O0 -Wall -Werror -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


