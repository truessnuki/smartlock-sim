################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/nuki/pl/actions.c \
../src/nuki/pl/exceptions.c 

OBJS += \
./src/nuki/pl/actions.o \
./src/nuki/pl/exceptions.o 

C_DEPS += \
./src/nuki/pl/actions.d \
./src/nuki/pl/exceptions.d 


# Each subdirectory must supply rules for building sources it contributes
src/nuki/pl/%.o: ../src/nuki/pl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -DSIMULATION -DWIN32 -I"../src/nuki" -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

