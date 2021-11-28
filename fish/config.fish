set -x EDITOR vim
set -g fish_prompt_pwd_dir_length 0
set -g fish_greeting

# take care to add node before heroku (heroku ships with old node binary)
add_path /usr/sbin /usr/local/sbin $HOME/go/bin $HOME/bin
add_path $HOME/bin/node-v16.13.0-linux-x64/bin/
add_path $HOME/bin/firefox-download/
add_path $HOME/bin/heroku/


# source topic-specific config files
for f in $HOME/.config/fish/conf.d/*
    source $f
end
