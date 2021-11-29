set -x EDITOR vim
set -x BROWSER firefox
set -g fish_prompt_pwd_dir_length 0
set -g fish_greeting

add_path /usr/sbin /usr/local/sbin 
add_path $HOME/.local/bin
add_path $HOME/bin
add_path $HOME/go/bin 
# take care to add node before heroku (heroku ships with old node binary)
add_path $HOME/bin/node-v16.13.0-linux-x64/bin/
add_path $HOME/bin/firefox-download/
add_path $HOME/bin/heroku/
