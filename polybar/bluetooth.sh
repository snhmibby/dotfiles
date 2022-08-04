#!/bin/bash

bluetooth_is_on() {
	bluetoothctl show | grep -q "Powered: yes"
}

icon() {
	if bluetooth_is_on; then
		echo 
		exit 0
	else
		echo 
		exit 1
	fi
}

toggle() {
	if bluetooth_is_on; then
		bluetoothctl power off
	else
		bluetoothctl power on
	fi
}

if test "x$1" = "x--toggle"; then
	toggle
else
	icon
fi
