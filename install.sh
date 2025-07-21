#!/bin/bash

set -e

echo "🚀 Setting up Ubuntu Development Environment..."

echo "📦 Updating system packages..."
sudo apt udpate && sudo apt upgrade -y

echo "🔧 Installing essential development tools..."

sudo apt install -y \
    git \
    curl \
    wget \
    build-essential \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    gnupg \
    lsb-release \
    unzip \
    tar \
    gzip \
    python3 \
    python3-pip \
    nodejs \
    npm \
    ripgrep \
    fd-find \
    fzf \
    tree \
    htop \
    tmux \
    zsh \
    fonts-firacode

echo "📝 Installing Neovim... not implemented yet"
# TODO

echo "📁 Creating sym-links..."
# Symlinks 
ln -sf ~/.dotfiles/nvim ~/.config/nvim
# ln -sf ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.bashrc ~/.bashrc
ln -sf ~/.dotfiles/.inputrc ~/.inputrc

# add neovim unstable repo to apt
sudo add-apt-repository ppa:neovim-ppa/unstable
# install packages
sudo apt update
xargs sudo apt install -y < ~/.dotfiles/scripts/packages.txt

# dev tools
# ~/.dotfiles/scirpts/setup-tools.sh
