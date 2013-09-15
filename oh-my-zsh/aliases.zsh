# Basic directory operations
alias ...='cd ../..'

# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

alias ppush='git push origin HEAD:refs/publish/master'
alias pdraft='git push origin HEAD:refs/drafts/master'
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

alias rake='bundle exec rake'
alias guard='bundle exec guard'

alias tn='tmux new -s '
alias ta='tmux a -t '
