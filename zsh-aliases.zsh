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
alias gcm='git commit -am'
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
alias gpl='git pull --rebase origin $(git branch | sed -n "/\* /s///p")'
alias gps='git push origin master'
alias gpb='git push origin $(git branch | sed -n "/\* /s///p")'

alias rake='bundle exec rake'
alias guard='bundle exec guard'

alias tn='tmux new -s '
alias ta='tmux a -t '
alias ts='tmux switch-client -t '
alias tl='tmux list-sessions -F "echo "\e[0;31m#{session_name}\e[0m: \e[0;34m #{session_windows} windows\e[0m, created at #{session_created_string}""'

alias mssh_nb_prod='mssh ubuntu@i-08498ec238f3f4902 --profile narrative_bi --region us-west-1'
alias mssh_nb_stage='mssh ubuntu@i-025ba4163faa85de7 --profile narrative_bi --region us-west-1'
alias mssh_nb_prod_worker_1='mssh ubuntu@i-00cbc35d730c1dce1 --profile narrative_bi --region us-west-1'
alias mssh_nb_prod_worker_2='mssh ubuntu@i-0fb3cf71fbd9f504f --profile narrative_bi --region us-west-1'
alias mssh_nb_yury_pc='mssh ubuntu@i-06803487334f278d8 --profile narrative_bi --region eu-central-1'

bindkey "^R" history-incremental-search-backward
