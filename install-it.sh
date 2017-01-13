#!/bin/bash
set -x
mount -oloop $PWD/adaos-floppy.img /mnt
cp AdaOS /mnt/boot/
umount /mnt
e2fsck $PWD/adaos-floppy.img
