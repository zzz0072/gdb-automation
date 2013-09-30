#!/bin/sh -x
if [ -z "$1" -o -z "$2" ] ; then
    echo "usage $0 QEMU_STM32_path"
    exit
fi

# Make sure we are the only one
pkill -9 qemu-system-arm

# Clean up log
rm -f $2

$1 -M stm32-p103 -gdb tcp::3333 -S -kernel main.bin -monitor null \
-serial file:$2

