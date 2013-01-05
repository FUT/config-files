#!/bin/bash

# Install mercurial
sudo apt-get install mercurial python-setuptools python2.7 libgnome2-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev libperl-dev python-dev libncurses5-dev

# Compile vim from source
hg clone https://vim.googlecode.com/hg/ vim
hg pull
hg update

cd vim/src
./configure --with-features=huge \
  --enable-rubyinterp \
  --enable-pythoninterp \
  --enable-cscope \
  --enable-fontset \
  --with-x

make
sudo make install
