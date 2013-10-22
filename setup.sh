#!/bin/bash

notice()
{
  echo -e "\033[1;32m\n\n=========================================================\n  [INFO] $1\n\033[0m"
}

curl -L https://get.rvm.io | bash -s stable --ruby

rvm use default
gem install bundler rake --no-rdoc --no-ri

notice "Configure git"
git config branch.autosetuprebase always

notice "Switch to oh-my-zsh"
sudo apt-get install zsh

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

notice "Configure oh-my-zsh"
ln -nfs zshrc.zsh $HOME/.zshrc
ln -nfs zsh-local.zsh $HOME/.zsh-local
ln -nfs zsh-aliases.zsh $HOME/.zsh-aliases

notice "Install vim"
brew install vim

echo `pwd`
notice "Configure vim"
cd vim-dotfiles
source setup.sh
cd ..

notice "Install other tools"
bundle
rake install
