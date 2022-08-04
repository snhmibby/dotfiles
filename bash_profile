export NO_AT_BRIDGE=1 #don't start spi bus (at-spi-launcher)
if [[ -z $DISPLAY  ]] && [[ $(tty) = /dev/tty1  ]]; then
	startx
fi
