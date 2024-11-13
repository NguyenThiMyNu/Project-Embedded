################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/lpuart_polling.c \
../source/mtb.c \
../source/semihost_hardfault.c 

C_DEPS += \
./source/lpuart_polling.d \
./source/mtb.d \
./source/semihost_hardfault.d 

OBJS += \
./source/lpuart_polling.o \
./source/mtb.o \
./source/semihost_hardfault.o 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_MKL82Z128VLK7 -DCPU_MKL82Z128VLK7_cm0plus -DFRDM_KL82Z -DFREEDOM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__REDLIB__ -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\source" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\drivers" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\device" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\utilities" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\component\uart" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\component\serial_manager" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\component\lists" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\CMSIS" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\board" -O0 -fno-common -g3 -gdwarf-4 -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source

clean-source:
	-$(RM) ./source/lpuart_polling.d ./source/lpuart_polling.o ./source/mtb.d ./source/mtb.o ./source/semihost_hardfault.d ./source/semihost_hardfault.o

.PHONY: clean-source

