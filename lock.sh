#!/bin/sh

if [ $(cat /etc/hostname) = "infinity" ] ; then
	exec swayidle -w \
		 timeout 300 'swaylock -f -c 000000 --ring-color 454545 --key-hl-color 723ee4' \
         timeout 600 'swaymsg "output * power off"' resume 'swaymsg "output * power on"' \
		 timeout 10 'if pgrep swaylock; then swaymsg "output * power off"; fi' resume 'swaymsg "output * power on"' \
         lock 'swaylock -f -c 000000 --ring-color 454545 --key-hl-color 723ee4'
fi
