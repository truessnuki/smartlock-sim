################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/nuki/app/keyturn_ctrl/keyturn_ctrl.c \
../src/nuki/app/keyturn_ctrl/task_logic.c \
../src/nuki/app/keyturn_ctrl/task_tree.c \
../src/nuki/app/keyturn_ctrl/tasks.c 

OBJS += \
./src/nuki/app/keyturn_ctrl/keyturn_ctrl.o \
./src/nuki/app/keyturn_ctrl/task_logic.o \
./src/nuki/app/keyturn_ctrl/task_tree.o \
./src/nuki/app/keyturn_ctrl/tasks.o 

C_DEPS += \
./src/nuki/app/keyturn_ctrl/keyturn_ctrl.d \
./src/nuki/app/keyturn_ctrl/task_logic.d \
./src/nuki/app/keyturn_ctrl/task_tree.d \
./src/nuki/app/keyturn_ctrl/tasks.d 


# Each subdirectory must supply rules for building sources it contributes
src/nuki/app/keyturn_ctrl/%.o: ../src/nuki/app/keyturn_ctrl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -std=c99 -DWIN64 -DSIMULATION -I../src/nuki -O0 -Wall -Werror -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


