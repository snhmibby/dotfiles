#!/bin/bash

#homebrew power menu

shutdown=
reboot=
lock=
suspend=
logout=
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"
theme="$HOME/.config/rofi/power/menu.rasl"

opt=$(echo -e "$options" | rofi -theme "$theme" -dmenu)
case $opt in
	$shutdown)
		systemctl poweroff
		;;
	$reboot)
		systemctl reboot
		;;
	$lock)
		rofi -e "instal & configure screen locker you lazy )@!#*&"
		;;
	$suspend)
		mpc -q pause
		amixer set Master mute
		systemctl suspend
		;;
	$logout)
		i3-msg exit
		;;
esac

