# Load private config
if [ -f $HOME/.config/fish/private.fish ]
    source $HOME/.config/fish/private.fish
end

# Editor
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

#
# ENV PATH etc.
#

# Fish 3.1+ doesn't add binaries to the path autmatically anymore
# https://github.com/fish-shell/fish-shell/issues/6594
contains /usr/local/bin $PATH
or set PATH /usr/local/bin $PATH

set -x PATH $PATH /usr/sbin /usr/local/sbin $HOME/go/bin $HOME/bin $HOME/bin/heroku/bin

#
### ALIAS
#
# Main
if [ -f $HOME/.config/fish/aliases/main.fish ]
    source $HOME/.config/fish/aliases/main.fish
end

#
### GIT PROMPT CONFIGURATION
# See the file /usr/local/share/fish/functions/fish_git_prompt.fish
#
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_showupstream 'yes'

set -l cl_empress '757575'
set -l cl_gainsboro 'E0E0E0'
set -l cl_dodger_blue '297EF2'
set -l cl_gorse 'FFEB3B'
set -l cl_red_orange 'F52D2D'
set __fish_git_prompt_color_branch $cl_gorse -b $cl_empress
set __fish_git_prompt_color_dirtystate $cl_dodger_blue -b $cl_gainsboro
set __fish_git_prompt_color_invalidstate $cl_red_orange -b $cl_gainsboro
set __fish_git_prompt_color_stagedstate $cl_dodger_blue -b $cl_gainsboro
set __fish_git_prompt_color_cleanstate $cl_dodger_blue -b $cl_gainsboro
set __fish_git_prompt_color_stashstate $cl_dodger_blue -b $cl_gainsboro
set __fish_git_prompt_color_upstream $cl_gainsboro -b $cl_empress
set __fish_git_prompt_color_untrackedfiles $cl_dodger_blue -b $cl_gainsboro
set __fish_git_prompt_color $cl_gainsboro -b $cl_empress

set __fish_git_prompt_char_cleanstate '  '
set __fish_git_prompt_char_dirtystate '  '
set __fish_git_prompt_char_invalidstate '  '
set __fish_git_prompt_char_stagedstate '  '
set __fish_git_prompt_char_stashstate '  '
set __fish_git_prompt_char_stateseparator ' '
set __fish_git_prompt_char_untrackedfiles '  '
set __fish_git_prompt_char_upstream_ahead '  '
set __fish_git_prompt_char_upstream_behind '  '
set __fish_git_prompt_char_upstream_diverged '  '
set __fish_git_prompt_char_upstream_equal '  '
set __fish_git_prompt_char_upstream_prefix ' '

#
### PROMPT
#

# Prevent directories names from being shortened
set fish_prompt_pwd_dir_length 0

# fish_prompt defined in ~/.config/fish/functions/fish_prompt.fish
