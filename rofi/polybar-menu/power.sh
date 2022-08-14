#!/bin/bash

#homebrew power menu

theme="polybar-menu/power"
shutdown=
reboot=
lock=
suspend=
logout=
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

opt=$(echo -e "$options" | rofi -theme "$theme" -dmenu)
case $opt in
	$shutdown)
		systemctl poweroff
		;;
	$reboot)
		systemctl reboot
		;;
	$lock)
		rofi -e "instal & configure screen locker"
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

