#!/bin/sh

if [ $(cat /etc/hostname) = "infinity" ] ; then
	exec swayidle -w \
         timeout 300 'swaymsg "output * power off"' resume 'swaymsg "output * power on"' \
		 timeout 310 'swaylock -f -c 000000 --ring-color 454545 --key-hl-color 723ee4' \
         lock 'swaylock -f -c 000000 --ring-color 454545 --key-hl-color 723ee4' \
		 timeout 900 'poweroff'
fi
