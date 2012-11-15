#!/bin/bash
cd vim-dotfiles

ln -vnfs "`pwd`/vimrc" ~/.vimrc
ln -vnfs "`pwd`/gvimrc" ~/.gvimrc
ln -vnfs "`pwd`/vim" ~/.vim

rm -vrf ~/.vim/tmp
rm -vrf ~/.vim/backup

mkdir ~/.vim/tmp -v
mkdir ~/.vim/backup -v

rm -vrf  ~/.vim/bundle/vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

sudo apt-get install ack-grep python-fontforge
