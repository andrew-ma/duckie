#!/bin/bash

kpartx -a -v dt-hypriotos-rpi-v1.1.1.img
ls -l /dev/mapper

mount /dev/mapper/loop0p1 mounted/loop0p1
mount /dev/mapper/loop0p2 mounted/loop0p2
