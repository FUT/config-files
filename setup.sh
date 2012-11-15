#!/bin/bash

notice()
{
  echo -e "\033[1;32m\n\n=========================================================\n  [INFO] $1\n\033[0m"
}

notice "Install rvm and latest ruby version"
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config

curl -L https://get.rvm.io | bash -s stable --ruby

rvm use default
gem install bundler rake --no-rdoc --no-ri

notice "Switch to oh-my-zsh"
sudo apt-get install zsh

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

notice "Configure oh-my-zsh aliases"
source oh-my-zsh/setup.sh

notice "Install vim"
source vim/setup.sh

notice "Configure vim"
source vim-dotfiles/setup.sh

notice "Install other tools"
bundle
rake install
