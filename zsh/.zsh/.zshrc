function zrclocal () {
    source "${ZDOTDIR:-${HOME}}/.zshrc.local"
    return 0
}

zrclocal
fpath+=${ZDOTDIR:-~}/.zsh_functions
