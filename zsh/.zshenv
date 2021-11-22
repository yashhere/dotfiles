# paths
export GOPATH=$HOME/go-workspace

export GRPC_VERBOSITY=DEBUG

# preferred text editor
export EDITOR=vim
export VISUAL=vim

# language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LESSCHARSET=utf-8

# use 256 color terminal
export TERM=xterm-256color

if which rbenv > /dev/null; then 
    eval "$(rbenv init -)"; 
fi

export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/.local/bin:$GOPATH/bin:$PATH
