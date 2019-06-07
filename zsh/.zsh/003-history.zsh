# history
HISTFILE=~/.zhistory

setopt SHARE_HISTORY

HISTSIZE=50000
SAVEHIST=50000

# Add commands to history as they are entered, don't wait for shell to exit
setopt INC_APPEND_HISTORY

# Also remember command start time and duration
setopt EXTENDED_HISTORY

# Do not keep duplicate commands in history
setopt HIST_IGNORE_ALL_DUPS

# Do not remember commands that start with a whitespace
setopt HIST_IGNORE_SPACE
