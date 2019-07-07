FILES=~/.bash/*.bash
for config in $FILES
do
    echo $config
done

if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bash_profile" ]; then
	. "$HOME/.bash_profile"
    fi
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
echo "loadedbrew doctor"
