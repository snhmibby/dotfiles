abbr .. cd ..
abbr ... cd ../..
abbr .... cd ../../..

#convenience
abbr v vim
abbr vimrc vim ~/.vimrc
abbr fugit vim -c Git
abbr g egrep
abbr l less
abbr lf ls -F
abbr ll ls -lh
abbr c clear
abbr cl 'clear; ls'
abbr ws sudo wireshark

# wifi
abbr wifiscan sudo iwlist wlp2s0 scan
abbr intf sudo vim /etc/network/interfaces
abbr up sudo ifup wlp2s0
abbr down sudo ifdown wlp2s0

# apt
abbr apt sudo apt
abbr apti sudo apt install
abbr aptu 'sudo apt update; sudo apt upgrade'
