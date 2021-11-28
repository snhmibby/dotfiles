set -x EDITOR vim
set -g fish_prompt_pwd_dir_length 0
set -g fish_greeting

switch (uname)
case Linux
    set -x OSTYPE "Linux"
case Darwin
    set -x OSTYPE "MacOS"
case FreeBSD NetBSD DragonFly
    set -x OSTYPE "FreeBSD"
case '*'
    set -x OSTYPE "unknown"
end

function add_path
    for p in $argv
        contains $p $PATH
        or set -x PATH $PATH $p
    end
end

# take care to add node before heroku (heroku ships with old node binary)
add_path /usr/sbin /usr/local/sbin $HOME/go/bin $HOME/bin
add_path $HOME/bin/node-v16.13.0-linux-x64/bin/
add_path $HOME/bin/firefox-download/
add_path $HOME/bin/heroku/


# SOURCE NONSTANDARD CONFIG FILES
if [ -f $HOME/.config/fish/aliases.fish ]
    source $HOME/.config/fish/aliases.fish
end

if [ -f $HOME/config/fish/gitprompt.fish ]
    source $HOME/.config/fish/gitprompt.fish
end

