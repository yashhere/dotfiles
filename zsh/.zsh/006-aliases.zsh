# aliases
alias ls="ls -hF"
alias ll="ls -lahF"
alias lsl="ls -lhF"
alias "cd.."="cd ../"
alias mkdir="mkdir -p"
alias grep="grep -i"
alias e="$EDITOR"
alias v="vim"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'

# tmux
function t() {
  X=$#
  [[ $X -eq 0 ]] || X=X
  tmux new-session -A -s $X
}

alias tma='tmux attach -d -t'
alias git-tmux='tmux new -s $(basename $(pwd))'

