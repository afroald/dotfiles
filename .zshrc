# Load antigen
source "$HOME/.dotfiles/antigen/antigen.zsh"

# antigen bundle terminalapp
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen apply

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
  . ~/.dotfiles/secrets.zsh
fi

source ~/.dotfiles/convert-webfont.sh

# Optimizing my shell game
alias ll="ls -l"
alias lla="ls -la"
