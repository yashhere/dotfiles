source ~/.zplug/init.zsh

# To manage zplug itself like other packages
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
# Async for zsh, used by pure
zplug "mafredri/zsh-async", from:github, defer:0
# Load completion library for those sweet [tab] squares
zplug "lib/completion", from:oh-my-zsh
# Theme!
#zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
# zplug "therealklanni/purity", use:purity.zsh, from:github, as:theme-
zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme
zplug 'dracula/zsh', as:theme
# command auto-suggestion based on history
zplug "zsh-users/zsh-autosuggestions"
# faster directory navigation
zplug "skywind3000/z.lua"

zplug load
