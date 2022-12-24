set -x EDITOR vim
set -x BROWSER firefox
set -g fish_prompt_pwd_dir_length 0
set -g fish_greeting
fish_vi_key_bindings

# generic paths
fish_add_path /usr/sbin /usr/local/sbin $HOME/.local/bin
# haskell paths
fish_add_path $HOME/.cabal/bin $HOME/.ghcup/bin
# sabaki
fish_add_path /opt/Sabaki

starship init fish | source
