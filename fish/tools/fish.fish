set -g -x SHELL /bin/fish
set -g -x fish_greeting ''

set -g fish_emoji_width 2      # NOT COMPATIBLE with fish <= 2.7.1

# Fish 3.1+ doesn't add binaries to the path autmatically anymore
# https://github.com/fish-shell/fish-shell/issues/6594
contains /usr/local/bin $PATH
or set PATH /usr/local/bin $PATH

# Prevent directories names from being shortened
set fish_prompt_pwd_dir_length 0

# Default Paths
fish_add_path /usr/local/sbin
fish_add_path /usr/bin
fish_add_path /usr/sbin
fish_add_path /bin
fish_add_path /sbin

fish_add_path $HOME/.local/bin
fish_add_path $HOME/bin
