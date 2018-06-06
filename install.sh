#!/bin/sh

set -e

cd "$HOME"

ln -sf .dotfiles/.gitconfig .gitconfig
ln -sf .dotfiles/.global_ignore .global_ignore
ln -sf .dotfiles/.hyper.js .hyper.js
ln -sf .dotfiles/.nanorc .nanorc
ln -sf .dotfiles/.zshenv .zshenv
ln -sf .dotfiles/.zshrc .zshrc
