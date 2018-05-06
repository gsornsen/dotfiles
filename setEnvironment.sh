#!/bin/bash

# Create symbolic links for dotfiles. This way, we can keep
# all of our systems to to date using git.

# git directory
gitDir=~/git/dotfiles

# Make parent .config directory
mkdir -p ~/.config

# tmux config
cp -r $gitDir/tmux/.tmux.conf ~/.tmux.conf

# Xresources and Xdefault
cp -r $gitDir/Xresources/.Xresources ~/.Xresources
cp -r $gitDir/Xresources/.Xdefault ~/.Xdefault

# neofetch

cp -r $gitDir/config/neofetch ~/.config/neofetch
