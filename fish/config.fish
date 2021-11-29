set -x EDITOR vim
set -g fish_prompt_pwd_dir_length 0
set -g fish_greeting

# take care to add node before heroku (heroku ships with old node binary)
add_path /usr/sbin /usr/local/sbin 
add_path $HOME/.local/bin
add_path $HOME/bin
add_path $HOME/go/bin 
add_path $HOME/bin/node-v16.13.0-linux-x64/bin/
add_path $HOME/bin/firefox-download/
add_path $HOME/bin/heroku/


# source custom config
for f in $HOME/.config/fish/custom/*
    source $f
end
