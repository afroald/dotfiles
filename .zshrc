# Load antigen
source ~/.dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle terminalapp
antigen bundle zsh-users/zsh-completions

antigen theme robbyrussell

antigen apply

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Sublime Text is the best.
export EDITOR="subl -w"

# Add an alias for dotfiles
alias dotfiles="cd ~/.dotfiles"

# Alias a quick http server
alias http="php -S localhost:3000"

# Caching problems are way annoying
alias clear-dns-cache="sudo killall -HUP mDNSResponder"

# Super top-secret stuff that has to stay out of this repo
if [ -f ~/.dotfiles/secrets.zsh ]; then
  source ~/.dotfiles/secrets.zsh
fi

source ~/.dotfiles/convert-webfont.sh
