# XDG config
set -x XDG_CONFIG_HOME ~/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_CONFIG_DATA $HOME/.local/share

# Locales
set -x LC_ALL "en_US.UTF-8" # only set this if you want to overwrite ALL locales!
set -x LANG en_US.UTF-8
set -x LANGUAGE en_US.UTF-8
set -x LESSCHARSET utf-8

# Fisher
if [ -f $HOME/.config/fish/tools/fisher.fish ]
  source $HOME/.config/fish/tools/fisher.fish
end

# Fish config
if [ -f $HOME/.config/fish/tools/fish.fish ]
  source $HOME/.config/fish/tools/fish.fish
end

# Manpages
set -x MANPATH /usr/share/man /usr/local/share/man
fish_add_path $MANPATH

# EDITOR
set -x EDITOR vim
set -x GIT_EDITOR $EDITOR
set -x VISUAL vim

# COMPILERS
set -x CC gcc
set -x CXX g++

switch (uname)
case Darwin
  set -x OSTYPE "Darwin"

  # `ls` colorscheme for BSD and Darwin
  set -x LSCOLORS exfxcxdxbxegedabagacad
  set -x CLICOLOR 1

  # coreutils must be installed
  alias ls="/usr/local/opt/coreutils/libexec/gnubin/ls --color=auto"

  # Docker tooling
  set -x ETC_LOCALTIME (realpath /etc/localtime)

case Linux
  set -x OSTYPE "Linux"

  # Use pbcopy on linux
  alias pbcopy="env DISPLAY=:0 xclip -selection clipboard"

  # Linux specific env vars
  dircolors -c $HOME/.dir_colors | source

  # `$DISPLAY` should be set by SSH configs and NOT shell config files
  if [ -d $HOME/.terminfo ]
    set -x TERMINFO "$HOME/.terminfo"
  end

case '*'
  set -x OSTYPE "unknown"
end

# ALIASES
## Main
if [ -f $HOME/.config/fish/aliases/main.fish ]
    source $HOME/.config/fish/aliases/main.fish
end

## Private aliases (e.g. with servers address...)
### aliases/private.fish will be ignored by git (.gitignore)
if [ -f $HOME/.config/fish/aliases/private.fish ]
    source $HOME/.config/fish/aliases/private.fish
end

fish_add_path "/usr/local/opt/tcl-tk/bin"

# reload fish config
function reload
    source $HOME/.config/fish/config.fish
end
