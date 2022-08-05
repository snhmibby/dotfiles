#!/bin/bash

#homebrew app menu

firefox=
mail=
terminal=
videolan=嗢

options="$terminal\n$mail\n$firefox\n$videolan\n"
theme="polybar-menu/app"

opt=$(echo -e "$options" | rofi -theme "$theme" -dmenu)
case $opt in
	$terminal)
		rofi-sensible-terminal
		;;
	$firefox)
		firefox
		;;
	$videolan)
		vlc
		;;
	$mail)
		rofi-sensible-terminal -e neomutt
		;;
esac

