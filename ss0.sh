#!/bin/sh

clear
sudo stty -F /dev/ttyACM0 -hupcl
echo 0 > /dev/ttyACM0
