# paths
export GOPATH=$HOME/go-workspace

export GRPC_VERBOSITY=DEBUG

# preferred text editor
export EDITOR=vim
export VISUAL=vim

# language
export LC_COLLATE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_MONETARY=en_US.UTF-8
export LC_NUMERIC=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LESSCHARSET=utf-8

# Base16 Shell
# BASE16_SHELL="$HOME/.config/base16-shell/"
# [ -n "$PS1" ] && \
#     [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
#         eval "$("$BASE16_SHELL/profile_helper.sh")"

# use 256 color terminal
export TERM=xterm-256color

if which rbenv > /dev/null; then 
    eval "$(rbenv init -)"; 
fi

export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/.local/bin:$GOPATH/bin:$PATH
