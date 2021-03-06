# Basic directory operations
alias ...='cd ../..'

# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

alias glp='git log --color --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold yellow)<%an>%Creset'\'' --abbrev-commit --'
alias gca='git commit --amend'
alias gcm='git commit -asm'
alias ga='git add . && git add -u'
alias gs='git status'
alias gch='git checkout'
alias gchb='git checkout -b '
alias gchr='git checkout master && git checkout -b $[ ( $RANDOM % 100000 )  + 1 ]'
alias gchm='git checkout master'
alias gdm='git diff master'
alias gdms='git diff master --stat'
alias gd='git diff'
alias grm='git fetch origin master:master && git rebase master'
alias grh='git reset HEAD~1 --hard'
alias grs='git reset HEAD~1 --soft'
alias gpl='git pull --rebase origin `git branch | sed -n "/\* /s///p"`'
alias gps='git push origin master'
alias gpb='git push origin `git branch | sed -n "/\* /s///p"`'

alias rake='bundle exec rake'
alias guard='bundle exec guard'

alias tn='tmux new -s '
alias ta='tmux a -t '
alias ts='tmux switch-client -t '
alias tl='tmux list-sessions -F "`echo "\e[0;31m#{session_name}\e[0m: \e[0;34m #{session_windows} windows\e[0m, created at #{session_created_string}"`"'



bindkey "^R" history-incremental-search-backward


