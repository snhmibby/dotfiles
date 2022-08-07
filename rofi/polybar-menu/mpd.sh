#!/bin/bash

#homebrew mpd menu

theme="polybar-menu/mpd"
play=
pause=
stop=
next=
prev=
repeat=
random=

active=""
toggle=""

status=$(mpc status)

if [[ $status =~ playing ]]; then
	toggle=$pause
else
	toggle=$play
fi

if [[  "$status" =~ 'repeat: on' ]]; then
	active="-a 4"
fi

if [[ "$status" =~ 'random: on' ]]; then
	if [ -z "$active" ]; then
		active="-a 5"
	else
		active="$active,5"
	fi
fi

options="$prev\n$toggle\n$stop\n$next\n$repeat\n$random"
opt=$(echo -e "$options" | rofi -theme "$theme" -dmenu $active)
case $opt in
	$toggle)
		mpc -q toggle
		;;
	$stop)
		mpc -q stop
		;;
	$next)
		mpc -q next
		;;
	$prev)
		mpc -q prev
		;;
	$repeat)
		mpc -q repeat
		;;
	$random)
		mpc -q random
		;;
esac

