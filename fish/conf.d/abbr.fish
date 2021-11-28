abbr .. cd ..
abbr ... cd ../..
abbr .... cd ../../..

#silly convenience
abbr v vim
abbr g egrep
abbr l less
abbr lf ls -F
abbr c clear
abbr cl 'clear; ls'
abbr ws sudo wireshark

# wifi
abbr scan sudo iwlist wlp2s0 scan
abbr net sudo vim /etc/network/interfaces
abbr up sudo ifup wlp2s0
abbr down sudo ifdown wlp2s0

# apt
abbr apt sudo apt
abbr apti sudo apt install
abbr aptu 'sudo apt update; sudo apt upgrade'
