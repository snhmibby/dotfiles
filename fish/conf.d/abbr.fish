abbr .. cd ..
abbr ... cd ../..
abbr .... cd ../../..

#convenience
abbr v vim
abbr vimrc vim ~/.vimrc
abbr g egrep
abbr l less
abbr lf ls -F
abbr ll ls -lh
abbr c clear
abbr cl 'clear; ls'
abbr ws sudo wireshark
abbr m neomutt
abbr mail neomutt
abbr fm fetchmail

# documentation
abbr doc-dev 'firefox devdocs.io'
abbr doc-ghc 'firefox ~/.ghcup/share/doc/ghc-8.10.7/html/index.html'
abbr doc-hugo 'cd ~/src/other/hugo/docs && hugo server -p 12345 &; sleep 2 && firefox localhost:12345'

# wifi
abbr wifiscan sudo iwlist wlp2s0 scan
abbr intf sudo vim /etc/network/interfaces
abbr up sudo ifup wlp2s0
abbr down sudo ifdown wlp2s0

# apt
abbr apts apt search
abbr apt sudo apt
abbr apti sudo apt install
abbr aptu 'sudo apt update; sudo apt upgrade'

#games
abbr fox-weiqi wine \"'/home/jurjen/.wine/drive_c/Program Files (x86)/foxwq/foxwq/foxwq.exe'\"
