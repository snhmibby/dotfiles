#!/bin/bash

#homebrew power menu

shutdown=
reboot=
lock=
suspend=
logout=
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"
theme=menu.rasl

opt=$(echo -e "$options" | rofi -theme "$theme" -dmenu)
case $opt in
	$shutdown)
		systemctl poweroff
		;;
	$reboot)
		systemctl reboot
		;;
	$lock)
		#XX TODO install screen locker
		;;
	$suspend)
		mpc -q pause
		amixer set Master mute
		systemctl suspend
		;;
	$logout)
		if [[ "$DESKTOP_SESSION" == "Openbox" ]]; then
			openbox --exit
		elif [[ "$DESKTOP_SESSION" == "bspwm" ]]; then
			bspc quit
		elif [[ "$DESKTOP_SESSION" == "i3" ]]; then
			i3-msg exit
		fi
		;;
esac

