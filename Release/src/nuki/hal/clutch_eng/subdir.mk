################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/nuki/hal/clutch_eng/clutch_eng_simulation.c \
../src/nuki/hal/clutch_eng/clutch_eng_smartlock_v2.c 

OBJS += \
./src/nuki/hal/clutch_eng/clutch_eng_simulation.o \
./src/nuki/hal/clutch_eng/clutch_eng_smartlock_v2.o 

C_DEPS += \
./src/nuki/hal/clutch_eng/clutch_eng_simulation.d \
./src/nuki/hal/clutch_eng/clutch_eng_smartlock_v2.d 


# Each subdirectory must supply rules for building sources it contributes
src/nuki/hal/clutch_eng/%.o: ../src/nuki/hal/clutch_eng/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -std=c99 -DWIN64 -DSIMULATION -I../src/nuki -O0 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


