#!/bin/sh

ln -nfs "`pwd`/vimrc" ~/.vimrc
ln -nfs "`pwd`/gvimrc" ~/.gvimrc
ln -nfs "`pwd`/vim" ~/.vim

rm -rf ~/.vim/tmp
rm -rf ~/.vim/backup

mkdir ~/.vim/tmp
mkdir ~/.vim/backup

rm -rf  ~/.vim/bundle/vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

sudo apt-get install ack-grep python-fontforge
