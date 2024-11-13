################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_gpio.c \
../drivers/fsl_lpuart.c \
../drivers/fsl_sim.c \
../drivers/fsl_smc.c 

C_DEPS += \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_gpio.d \
./drivers/fsl_lpuart.d \
./drivers/fsl_sim.d \
./drivers/fsl_smc.d 

OBJS += \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_gpio.o \
./drivers/fsl_lpuart.o \
./drivers/fsl_sim.o \
./drivers/fsl_smc.o 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c drivers/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_MKL82Z128VLK7 -DCPU_MKL82Z128VLK7_cm0plus -DFRDM_KL82Z -DFREEDOM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__REDLIB__ -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\source" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\drivers" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\device" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\utilities" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\component\uart" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\component\serial_manager" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\component\lists" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\CMSIS" -I"D:\Embedded C\frdmkl82z_lpuart_polling\frdmkl82z_lpuart_polling\board" -O0 -fno-common -g3 -gdwarf-4 -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-drivers

clean-drivers:
	-$(RM) ./drivers/fsl_clock.d ./drivers/fsl_clock.o ./drivers/fsl_common.d ./drivers/fsl_common.o ./drivers/fsl_gpio.d ./drivers/fsl_gpio.o ./drivers/fsl_lpuart.d ./drivers/fsl_lpuart.o ./drivers/fsl_sim.d ./drivers/fsl_sim.o ./drivers/fsl_smc.d ./drivers/fsl_smc.o

.PHONY: clean-drivers

