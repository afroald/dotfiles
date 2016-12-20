# Load antigen
source "$HOME/.dotfiles/antigen/antigen.zsh"

antigen bundle terminalapp
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# Set prompt
autoload -U promptinit; promptinit
prompt pure

# Other possible very nice prompt:
# https://github.com/tylerreckart/odin

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

