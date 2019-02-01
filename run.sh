#!/bin/sh

echo $1
echo "Boot Disk: " $1
IMG=$1
FIRMWARE=firmware.bin

xhyve \
    -w \
    -m 4G \
    -c 2 \
    -s 0:0,hostbridge \
    -s 4,ahci-hd,$IMG \
   	-s 5,e1000 \
    -s 29,fbuf,tcp=127.0.0.1:29000,w=1024,h=768,wait \
    -s 31,lpc -l com1,stdio \
    -l bootrom,$FIRMWARE

