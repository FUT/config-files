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
alias gdm='git diff master'
alias gdms='git diff master --stat'
alias gd='git diff'
alias gps='git push'
alias gpl='git pull'
alias grm='git rebase master'

alias rake='bundle exec rake'
alias guard='bundle exec guard'
