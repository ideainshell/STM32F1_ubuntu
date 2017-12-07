################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/core/core_cm3.c 

OBJS += \
./CMSIS/core/core_cm3.o 

C_DEPS += \
./CMSIS/core/core_cm3.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/core/%.o: ../CMSIS/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -I"/home/shell/workspace/test/USER/BSP" -I"/home/shell/workspace/test/USER/APP" -I"/home/shell/workspace/test/CMSIS" -I"/home/shell/workspace/test/CMSIS/core" -I"/home/shell/workspace/test/CMSIS/device" -I"/home/shell/workspace/test/startup" -I"/home/shell/workspace/test/StdPeriph_Driver" -I"/home/shell/workspace/test/StdPeriph_Driver/inc" -I"/home/shell/workspace/test/StdPeriph_Driver/src" -I"/home/shell/workspace/test/UCOS" -I"/home/shell/workspace/test/UCOS/uC_CFG" -I"/home/shell/workspace/test/UCOS/uC-CPU" -I"/home/shell/workspace/test/UCOS/uC-LIB" -I"/home/shell/workspace/test/UCOS/uCOS-III" -I"/home/shell/workspace/test/UCOS/uCOS-III/Ports" -I"/home/shell/workspace/test/UCOS/uCOS-III/Source" -I"/home/shell/workspace/test/USER" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


