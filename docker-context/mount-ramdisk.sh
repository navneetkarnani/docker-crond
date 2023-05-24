#!/bin/bash

if [[ ! -d /mnt/ramdisk ]]; then
    echo "missing ramdisk dir. creating"
    mkdir -p /mnt/ramdisk
fi

echo "creating tmpfs based ramdisk"
/bin/mount -t tmpfs -o size=1M tmpfs /mnt/ramdisk

if [[ $? != 0 ]]; then
    echo "Error while creating tmpfs based ramdisk"
    exit 1
fi

touch /mnt/ramdisk/created