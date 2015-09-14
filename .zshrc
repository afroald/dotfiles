# Load antigen
source ~/.dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle bower
antigen bundle brew
antigen bundle brew-cask
antigen bundle bundler
antigen bundle composer
antigen bundle cp
antigen bundle extract
antigen bundle git
antigen bundle npm
antigen bundle nvm
antigen bundle terminalapp
antigen bundle vagrant

antigen theme robbyrussell

antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# Sublime Text is the best.
EDITOR="subl -w"

# Source zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Load the online help
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

# Add an alias for dotfiles
alias dotfiles="subl ~/.dotfiles"

# Alias a quick http server
alias http="php -S localhost:3000"

# Work shouldn't feel like work.
alias dev="cd ~/Development"

# Alias to access my dev Vagrant box more quickly
alias dev-server="VAGRANT_CWD=~/Development/dev-server vagrant"

# Caching problems are way annoying
alias refresh-dns="sudo killall -HUP mDNSResponder"
