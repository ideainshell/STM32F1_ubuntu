################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup/startup_stm32.s 

OBJS += \
./startup/startup_stm32.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -I"/home/shell/workspace/test/CMSIS" -I"/home/shell/workspace/test/CMSIS/core" -I"/home/shell/workspace/test/CMSIS/device" -I"/home/shell/workspace/test/startup" -I"/home/shell/workspace/test/StdPeriph_Driver" -I"/home/shell/workspace/test/StdPeriph_Driver/inc" -I"/home/shell/workspace/test/StdPeriph_Driver/src" -I"/home/shell/workspace/test/UCOS" -I"/home/shell/workspace/test/UCOS/uC_CFG" -I"/home/shell/workspace/test/UCOS/uC-CPU" -I"/home/shell/workspace/test/UCOS/uC-LIB" -I"/home/shell/workspace/test/UCOS/uCOS-III" -I"/home/shell/workspace/test/UCOS/uCOS-III/Ports" -I"/home/shell/workspace/test/UCOS/uCOS-III/Source" -I"/home/shell/workspace/test/USER" -I"/home/shell/workspace/test/USER/APP" -I"/home/shell/workspace/test/USER/BSP" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


