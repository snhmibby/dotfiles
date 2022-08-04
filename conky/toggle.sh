!/bin/bash
# use xdotool to move a window on and off screen

#########################################################
# configuration variables

# cannot move window entirely off screen, has to have 1 pixel on
on_screenX=5
on_screenY=5
off_screenX=1919
off_screenY=1079

# how to get window with xdotool
search="search --all --class conky" #--name 'laptop.jurjen.dev'"

get_geometry() {
	geom=$(xdotool $search getwindowgeometry --shell)
	if [ $? -ne 0 ]; then
		echo "Error: Cannot find window."
		exit 1
	fi
	eval $geom
}

off_screen() {
	test $X -ne $on_screenX
}

toggle_window() {
	get_geometry
	if off_screen; then
		xdotool $search windowmove $on_screenX $on_screenY
	else
		xdotool $search windowmove $off_screenX $off_screenY
	fi
}

toggle_window
