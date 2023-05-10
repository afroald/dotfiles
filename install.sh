#!/bin/sh

set -e

cd "$HOME"

ln -sf .dotfiles/.gitconfig .gitconfig
ln -sf .dotfiles/.global_ignore .global_ignore
ln -sf .dotfiles/.zshenv .zshenv
ln -sf .dotfiles/.zshrc .zshrc
ln -sf .dotfiles/.vimrc .vimrc
ln -sf .dotfiles/nvim .config/nvim

