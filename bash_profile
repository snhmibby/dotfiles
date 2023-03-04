export NO_AT_BRIDGE=1 #don't start spi bus (at-spi-launcher)
export EDITOR=vim
export TERMINAL=alacritty
export BROWSER=firefox
if [[ -z $DISPLAY  ]] && [[ $(tty) = /dev/tty1  ]]; then
	exec startx
fi
