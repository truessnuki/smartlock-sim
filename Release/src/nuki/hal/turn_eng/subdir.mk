################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/nuki/hal/turn_eng/turn_eng_simulation.c \
../src/nuki/hal/turn_eng/turn_eng_smartlock_v2.c 

OBJS += \
./src/nuki/hal/turn_eng/turn_eng_simulation.o \
./src/nuki/hal/turn_eng/turn_eng_smartlock_v2.o 

C_DEPS += \
./src/nuki/hal/turn_eng/turn_eng_simulation.d \
./src/nuki/hal/turn_eng/turn_eng_smartlock_v2.d 


# Each subdirectory must supply rules for building sources it contributes
src/nuki/hal/turn_eng/%.o: ../src/nuki/hal/turn_eng/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -DSIMULATION -DWIN32 -I"../src/nuki" -O3 -Wall -c -fmessage-length=0 -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


