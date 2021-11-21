# NVM Configuration
set -x NVM_DIR "$HOME/.nvm"

# NPM
set -x NODE_PATH $HOME/.npm-packages/bin
fish_add_path $NODE_PATH
