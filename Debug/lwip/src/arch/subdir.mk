################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/src/arch/lpc18xx_43xx_emac.c \
../lwip/src/arch/lpc_debug.c \
../lwip/src/arch/sys_arch_freertos.c 

OBJS += \
./lwip/src/arch/lpc18xx_43xx_emac.o \
./lwip/src/arch/lpc_debug.o \
./lwip/src/arch/sys_arch_freertos.o 

C_DEPS += \
./lwip/src/arch/lpc18xx_43xx_emac.d \
./lwip/src/arch/lpc_debug.d \
./lwip/src/arch/sys_arch_freertos.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/arch/%.o: ../lwip/src/arch/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu17 -DDEBUG -D__CODE_RED -D__NEWLIB__ -DCORE_M4 -D__USE_LPCOPEN -DCPP_USE_HEAP -D__LPC43XX__ -I"/home/gustavo/FreeRTOS/CIAA_NXP_board/inc" -I"/home/gustavo/FreeRTOS/rtu_plusplus/lwip/inc" -I"/home/gustavo/FreeRTOS/rtu_plusplus/lwip/inc/ipv4" -I"/home/gustavo/FreeRTOS/rtu_plusplus/freertos/inc" -I"/home/gustavo/FreeRTOS/rtu_plusplus/nfc/inc" -I"/home/gustavo/MCUXpresso_11.2.0_4120/workspace/lpc_chip_43xx/inc" -I"/home/gustavo/MCUXpresso_11.2.0_4120/workspace/lpc_chip_43xx/inc/usbd" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

