# Pyenv (if pyenv exists) with virtualenv if pyenv-virtualenv plugin installed
if command -vq pyenv
    if not string match -q '*pyenv*' $PATH
        status --is-interactive; and source (pyenv init -|psub)
        if which pyenv-virtualenv-init > /dev/null
            status --is-interactive; and source (pyenv virtualenv-init -|psub)
        end
        pyenv rehash
    end

    set -g -x PYENV_ROOT "$HOME/.pyenv"
    fish_add_path $PYENV_ROOT/bin
end
