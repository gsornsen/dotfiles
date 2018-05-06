#!/bin/bash

# Create symbolic links for dotfiles. This way, we can keep
# all of our systems to to date using git.

# git directory
gitDir=~/git/dotfiles

# tmux Config
ln -sf $gitDir/tmux/.tmux.conf ~/.tmux.conf

# Xresources and Xdefault
ln -sf $gitDir/Xresources/.Xresources ~/.Xresources
ln -sf $gitDir/Xresources/.Xdefault ~/.Xdefault
