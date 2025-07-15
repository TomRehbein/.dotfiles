#!/bin/bash

# Symlinks 
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig

# add neovim unstable repo to apt
sudo add-apt-repository ppa:neovim-ppa/unstable
# install packages
sudo apt update
xargs sudo apt install -y < ~/.dotfiles/scripts/packages.txt

# dev tools
~/.dotfiles/scirpts/setup-tools.sh
