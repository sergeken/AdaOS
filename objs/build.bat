as ..\boot\multiboot.s -o multiboot.o
as ..\processor\interrupts.s -o interrupts.o
gnatmake -c b~main

ld -Ttext 100000 -Bstatic -o adaos multiboot.o interrupts.o b~main.o adaos.o adaos-device.o adaos-device-console.o adaos-multiboot.o adaos-processor.o adaos-processor-interrupts.o adaos-processor-io.o adaos-device-pic.o adaos-device-keyboard.o generated_interrupt_handlers.o adaos-processor-boot.o main.o -lc

