################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/nuki/hal/adc.c \
../src/nuki/hal/clock.c \
../src/nuki/hal/clutch_eng.c \
../src/nuki/hal/hall_sensor.c \
../src/nuki/hal/led.c \
../src/nuki/hal/turn_eng.c \
../src/nuki/hal/uart.c 

OBJS += \
./src/nuki/hal/adc.o \
./src/nuki/hal/clock.o \
./src/nuki/hal/clutch_eng.o \
./src/nuki/hal/hall_sensor.o \
./src/nuki/hal/led.o \
./src/nuki/hal/turn_eng.o \
./src/nuki/hal/uart.o 

C_DEPS += \
./src/nuki/hal/adc.d \
./src/nuki/hal/clock.d \
./src/nuki/hal/clutch_eng.d \
./src/nuki/hal/hall_sensor.d \
./src/nuki/hal/led.d \
./src/nuki/hal/turn_eng.d \
./src/nuki/hal/uart.d 


# Each subdirectory must supply rules for building sources it contributes
src/nuki/hal/%.o: ../src/nuki/hal/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -DSIMULATION -DWIN32 -I"../src/nuki" -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


