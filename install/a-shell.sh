[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/dotfiles/configs/bashrc ~/.bashrc
source ~/dotfiles/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
cp ~/dotfiles/configs/inputrc ~/.inputrc