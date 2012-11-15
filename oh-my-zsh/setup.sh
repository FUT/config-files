#!/bin/bash
cd oh-my-zsh

# Remove default git aliases
rm -vf ~/.oh-my-zsh/plugins/git/git.plugin.zsh

# Replace aliases
ln -vnfs "`pwd`/aliases.zsh" ~/.oh-my-zsh/lib/aliases.zsh
