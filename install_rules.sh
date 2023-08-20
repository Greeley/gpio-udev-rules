#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run with sudo"
  exit
fi

if [ -z "$1" ]
  then echo "Please supply a user"
  exit
fi

cp 99-gpio-device.rules /etc/udev/rules.d/99-gpio-device.rules
groupadd gpio
usermod -aG gpio ${1}
