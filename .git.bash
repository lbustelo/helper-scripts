alias git-clean="git branch | grep -v "master" | xargs git branch -D"
alias git-reset="git reset --hard HEAD"
source ~/.git-completion.bash
