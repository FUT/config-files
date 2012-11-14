#!/bin/sh

# Remove default git aliases
rm -f ~/.oh-my-zsh/plugins/git/git.plugin.zsh

# Replace aliases
ln -nfs "`pwd`/lib/aliases.zsh" ~/.oh-my-zsh/lib/aliases.zsh
