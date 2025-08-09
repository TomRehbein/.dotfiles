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
    fonts-firacode

echo "📝 Installing Neovim..."
sudo add-apt-repository ppa:neovim-ppa/unstable

echo "📁 Creating sym-links..."
# Symlinks 
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.bashrc ~/.bashrc
ln -sf ~/.dotfiles/.inputrc ~/.inputrc

echo "🟢 Installing Node.js via NVM... May need to be updated"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts
nvm use --lts

# dev tools
# ~/.dotfiles/scirpts/setup-tools.sh

echo "✅ Basic setup complete!"
