yay -S --needed visual-studio-code-bin

mkdir -p ~/.config/Code/User
cp ~/dotfiles/configs/vscode.json ~/.config/Code/User/settings.json

# Install default supported themes
code --install-extension enkia.tokyo-night