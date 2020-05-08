# aliases
alias ls="ls -hF"
alias ll="ls -lahF"
alias lsl="ls -lhF"
alias "cd.." "cd ../"
alias mkdir="mkdir -p"
alias grep="grep -i"
alias e="$EDITOR"
alias v="vim"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
alias hs="hugo serve --watch --enableGitInfo --forceSyncStatic --gc --cleanDestinationDir --ignoreCache --templateMetrics --templateMetricsHints --buildFuture --buildDrafts --disableFastRender"

alias tma='tmux attach -d -t'
alias git-tmux='tmux new -s (basename (pwd))'
