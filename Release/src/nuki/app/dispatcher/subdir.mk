################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/nuki/app/dispatcher/cmd.c \
../src/nuki/app/dispatcher/dispatcher.c 

OBJS += \
./src/nuki/app/dispatcher/cmd.o \
./src/nuki/app/dispatcher/dispatcher.o 

C_DEPS += \
./src/nuki/app/dispatcher/cmd.d \
./src/nuki/app/dispatcher/dispatcher.d 


# Each subdirectory must supply rules for building sources it contributes
src/nuki/app/dispatcher/%.o: ../src/nuki/app/dispatcher/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -DSIMULATION -DWIN32 -I"../src/nuki" -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


