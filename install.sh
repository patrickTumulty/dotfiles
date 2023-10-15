#!/bin/zsh

symlink() {
    echo "Creating symlink for $1"
    sudo ln -s $(pwd)/$1 ~/
}

symlink .ideavim
symlink .zshrc
