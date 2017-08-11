################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/eeprom.c \
../Src/main.c \
../Src/queue32.c \
../Src/stm32f0xx_it.c \
../Src/usb_device.c \
../Src/usbd_conf.c \
../Src/usbd_desc.c \
../Src/usbd_midi_if.c 

OBJS += \
./Src/eeprom.o \
./Src/main.o \
./Src/queue32.o \
./Src/stm32f0xx_it.o \
./Src/usb_device.o \
./Src/usbd_conf.o \
./Src/usbd_desc.o \
./Src/usbd_midi_if.o 

C_DEPS += \
./Src/eeprom.d \
./Src/main.d \
./Src/queue32.d \
./Src/stm32f0xx_it.d \
./Src/usb_device.d \
./Src/usbd_conf.d \
./Src/usbd_desc.d \
./Src/usbd_midi_if.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -DMIMUZ_TUCH_V020 -DSTM32F042 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F042x6 -I"/Users/dfm1/wksp/mimuz-tuch/Inc" -I"/Users/dfm1/wksp/mimuz-tuch/Drivers/STM32F0xx_HAL_Driver/Inc" -I"/Users/dfm1/wksp/mimuz-tuch/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"/Users/dfm1/wksp/mimuz-tuch/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"/Users/dfm1/wksp/mimuz-tuch/Middlewares/USBMIDI/Inc" -I"/Users/dfm1/wksp/mimuz-tuch/Drivers/CMSIS/Include" -I"/Users/dfm1/wksp/mimuz-tuch/Drivers/CMSIS/Device/ST/STM32F0xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


