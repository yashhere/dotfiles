FILES=~/.bash/*.bash
for config in $FILES
do
    source $config
done

if [ -n "$BASH_VERSION" ]; then
    # include .bash_profile if it exists
    [ -f "$HOME/.bash_profile" ] && source "$HOME/.bash_profile"
fi

[ -f ~/.privaterc ] && source ~/.privaterc

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
