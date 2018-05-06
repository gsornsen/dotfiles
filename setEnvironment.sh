#!/bin/bash

# Let's move our dotfiles into their proper places. This way
# I can use the same configurations across all machines.

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

# ncmpcpp
mkdir -p ~/.ncmpcpp
cp -r $gitDir/ncmpcpp/config ~/.ncmpcpp/config

# mopidy
cp -r $gitDir/mopidy/org.gnome.mopidyfifo.desktop ~/.config/autostart
sudo cp -r $gitDir/mopidy/mopidy.conf /etc/mopidy/mopidy.conf
