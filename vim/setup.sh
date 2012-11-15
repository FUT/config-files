#!/bin/bash

# Install mercurial
sudo apt-get install mercurial

# Compile vim from source
hg clone https://vim.googlecode.com/hg/ vim
hg pull
hg update

cd vim/src
./configure --with-features=huge \
  --enable-rubyinterp=yes \
  --enable-pythoninterp=yes \
  --enable-python3interp=yes \
  --enable-cscope \
  --enable-fontset

make
sudo make install
