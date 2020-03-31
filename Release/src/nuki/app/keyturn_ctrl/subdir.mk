################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/nuki/app/keyturn_ctrl/keyturn_ctrl.c \
../src/nuki/app/keyturn_ctrl/task_queue.c \
../src/nuki/app/keyturn_ctrl/tasks.c 

OBJS += \
./src/nuki/app/keyturn_ctrl/keyturn_ctrl.o \
./src/nuki/app/keyturn_ctrl/task_queue.o \
./src/nuki/app/keyturn_ctrl/tasks.o 

C_DEPS += \
./src/nuki/app/keyturn_ctrl/keyturn_ctrl.d \
./src/nuki/app/keyturn_ctrl/task_queue.d \
./src/nuki/app/keyturn_ctrl/tasks.d 


# Each subdirectory must supply rules for building sources it contributes
src/nuki/app/keyturn_ctrl/%.o: ../src/nuki/app/keyturn_ctrl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -DSIMULATION -DWIN32 -I"../src/nuki" -O3 -Wall -c -fmessage-length=0 -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


