################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/serial_manager/serial_manager.c \
../component/serial_manager/serial_port_uart.c 

C_DEPS += \
./component/serial_manager/serial_manager.d \
./component/serial_manager/serial_port_uart.d 

OBJS += \
./component/serial_manager/serial_manager.o \
./component/serial_manager/serial_port_uart.o 


# Each subdirectory must supply rules for building sources it contributes
component/serial_manager/%.o: ../component/serial_manager/%.c component/serial_manager/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_MKL82Z128VLK7 -DCPU_MKL82Z128VLK7_cm0plus -DFRDM_KL82Z -DFREEDOM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__REDLIB__ -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\source" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\drivers" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\device" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\utilities" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\component\uart" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\component\serial_manager" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\component\lists" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\CMSIS" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\board" -O0 -fno-common -g3 -gdwarf-4 -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-component-2f-serial_manager

clean-component-2f-serial_manager:
	-$(RM) ./component/serial_manager/serial_manager.d ./component/serial_manager/serial_manager.o ./component/serial_manager/serial_port_uart.d ./component/serial_manager/serial_port_uart.o

.PHONY: clean-component-2f-serial_manager

