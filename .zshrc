# Load antigen
source ~/.dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh

# antigen bundle extract
# antigen bundle git
# antigen bundle terminalapp
antigen bundle zsh-users/zsh-completions

antigen theme robbyrussell

antigen apply

# Sublime Text is the best.
EDITOR="subl -w"

# Load the online help
# unalias run-help
# autoload run-help
# HELPDIR=/usr/local/share/zsh/helpfiles

# Add an alias for dotfiles
alias dotfiles="subl ~/.dotfiles"

# Alias a quick http server
alias http="php -S localhost:3000"

# Work shouldn't feel like work.
alias dev="cd ~/Development"
alias dev-server="cd ~/Development/dev-server"

# Caching problems are way annoying
alias refresh-dns="sudo killall -HUP mDNSResponder"

# Super top-secret stuff that has to stay out of this repo
if [ -f ~/.dotfiles/secrets.zsh ]; then
  source ~/.dotfiles/secrets.zsh
fi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
