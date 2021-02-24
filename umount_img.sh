#!/bin/bash

umount mounted/loop0p1
umount mounted/loop0p2

ls -l /dev/mapper

find /dev -maxdepth 1 -name 'loop[0-9]' -exec sudo kpartx -d {} \;
find /dev -maxdepth 1 -name 'loop[0-9]' -exec sudo losetup -d {} 2>/dev/null \;

ls -l /dev/mapper
