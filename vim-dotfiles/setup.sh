#!/bin/sh

ln -nfs "`pwd`/vimrc" ~/.vimrc
ln -nfs "`pwd`/gvimrc" ~/.gvimrc
ln -nfs "`pwd`/vim" ~/.vim

mkdir ~/.vim/tmp
mkdir ~/.vim/backup

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

sudo apt-get install ack-grep python-fontforge
