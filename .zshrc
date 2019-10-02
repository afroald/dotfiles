#!/bin/bash

# Add an alias for dotfiles
alias dotfiles="cd ~/.dotfiles"

# Alias a quick http server
alias http="php -S localhost:3000"

# Caching problems are way annoying
alias clear-dns-cache="sudo killall -HUP mDNSResponder"

# Super top-secret stuff that has to stay out of this repo
if [ -f ~/.dotfiles/secrets.zsh ]; then
  . ~/.dotfiles/secrets.zsh
fi

. "$HOME/.dotfiles/convert-webfont.sh"

# Optimizing my shell game
alias ll="ls -l"
alias lla="ls -la"
alias current-branch="git rev-parse --abbrev-ref HEAD"
