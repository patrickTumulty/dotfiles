#!/bin/bash

sudo apt-get install git
sudo apt-get install curl 
sudo apt-get install ripgrep
sudo apt-get install fd-find
sudo apt-get install npm
sudo apt-get install gcc


# Install Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz

git clone git@github.com:patrickTumulty/pt-nvim.git ~/.config/nvim

# Install tmux 
sudo apt-get install tmux

git clone git@github.com:patrickTumulty/pt-tmux.git ~/.config/tmux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install Kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

git clone git@github.com:patrickTumulty/pt-kitty.git ~/.config/kitty

# Install dotfiles 
git clone git@github.com:patrickTumulty/dotfiles.git ~/.config/dotfiles
ln -fs ~/.config/dotfiles/.ideavimrc ~/.ideavimrc
ln -fs ~/.config/dotfiles/.zshrc ~/.zshrc

echo "Done"
