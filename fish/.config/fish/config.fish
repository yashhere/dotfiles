if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# Locale
set -xg LC_COLLATE en_US.UTF-8
set -xg LC_CTYPE en_US.UTF-8
set -xg LC_MESSAGES en_US.UTF-8
set -xg LC_MONETARY en_US.UTF-8
set -xg LC_NUMERIC en_US.UTF-8
set -xg LC_TIME en_US.UTF-8
# set -gx LC_ALL "en_US.UTF-8" # only set this if you want to overwrite ALL locales!
set -xg LANG en_US.UTF-8
set -xg LANGUAGE en_US.UTF-8
set -xg LESSCHARSET utf-8

# Env
# set -gx TERM xterm-256color # <= DON'T explicitly set this env var!
set -gx HOSTNAME (hostname -s)
set -xg EDITOR vim
set -xg VISUAL vim
set -gx CC gcc
set -gx CXX g++
set -xg GRPC_VERBOSITY DEBUG
set -gx fish_emoji_width 2 # NOT COMPATIBLE with fish <= 2.7.1
set -xg GOPATH $HOME/go-workspace
set -xg MANPATH /usr/share/man /usr/local/share/man

set -gx XDG_CONFIG_HOME ~/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_CONFIG_DATA $HOME/.local/share

if test -x (brew --prefix)/bin/go
    set -xg GOPATH $HOME/go-workspace
end

# Path
set -xg PATH /usr/local/sbin /usr/local/bin /usr/bin /usr/sbin /bin /sbin $PATH
set -xg PATH $PATH $HOME/.local/bin $HOME/bin
# set -xg PATH $PATH /usr/local/go/bin $GOPATH/bin
set -xg PATH $PATH $MANPATH

switch (uname)
case Darwin
  #########################
  # macOS specific env vars, boo
  ##
  if [ "$TERM_PROGRAM" = iTerm.app ]
    set -gx COLORTERM truecolor
  else
    # DO NOTHING
  end

  #########################
  # `ls` colorscheme for BSD and Darwin
  ##
  set -gx LSCOLORS exfxcxdxbxegedabagacad
  set -gx CLICOLOR 1
  alias ls="/usr/local/opt/coreutils/libexec/gnubin/ls --color=auto"

  ###############################
  # Docker tooling
  ##
  set -gx ETC_LOCALTIME (realpath /etc/localtime)

case Linux
  ###############################
  # Linux specific env vars
  ##
  dircolors -c $HOME/.dir_colors | source

  # `$DISPLAY` should be set by SSH configs and NOT shell config files 
  if [ -d $HOME/.terminfo ]
    set -gx TERMINFO "$HOME/.terminfo"
    # set -gx TERM xterm
  else
    # DO NOTHING!
  end
end


# Load rbenv automatically by appending
# the following to ~/.config/fish/config.fish:
# status --is-interactive; and source (rbenv init -|psub)

# test -e {$HOME}/.config/fish/.iterm2_shell_integration.fish ; and source {$HOME}/.config/fish/.iterm2_shell_integration.fish

