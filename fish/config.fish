#
# Environment set up
#
set -x EDITOR vim

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

for p in /usr/sbin /usr/local/sbin $HOME/go/bin $HOME/bin $HOME/bin/heroku/bin
    contains $p $PATH
    or set -x PATH $p $PATH
end


# SOURCE NONSTANDARD CONFIG FILES
if [ -f $HOME/.config/fish/aliases.fish ]
    source $HOME/.config/fish/aliases.fish
end

if [ -f $HOME/.config/fish/private.fish ]
    source $HOME/.config/fish/private.fish
end

if [ -f $HOME/config/fish/gitprompt.fish ]
    source $HOME/.config/fish/gitprompt.fish
end

