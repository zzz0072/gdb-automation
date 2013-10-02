#!/bin/sh
# Check param
if [ $# != 2 ] ; then
    echo $0 QEMU_LOG GDB_LOG
    exit
fi

# gdb was terminate. We do not need qemu for now.
pkill -9 qemu-system-arm

# Simply diff
diff $1 $2
if [ $? != 0 ] ; then
    echo "There are errors"
    echo "Memory:"
    cat $2
    echo "Qemu results:"
    cat $1
    exit
fi

echo "String: \n$(cat $1)\nString \"$(cat $1)\" between Qemu and memory are the same.. "
