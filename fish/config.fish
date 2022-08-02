set -x EDITOR vim
set -x BROWSER firefox
set -g fish_prompt_pwd_dir_length 0
set -g fish_greeting

add_path /usr/sbin /usr/local/sbin 

starship init fish | source
