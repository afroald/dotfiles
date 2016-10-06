# Load antigen
source ~/.dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh

# antigen bundle extract
# antigen bundle git
# antigen bundle terminalapp
antigen bundle zsh-users/zsh-completions

antigen theme robbyrussell

antigen apply

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Sublime Text is the best.
EDITOR="subl -w"

# Add an alias for dotfiles
alias dotfiles="cd ~/.dotfiles"

# Alias a quick http server
alias http="php -S localhost:3000"

# Work shouldn't feel like work.
alias dev="cd ~/Development"
alias hqbk="cd ~/Development/hqbk"
alias wttv="cd ~/Development/wttv/welcometothevillage.nl"
alias svava="cd ~/Development/hqbk/svavaband.nl"

function dev-server() {
  dev_server_path="$HOME/Development/dev-server"

  if [ $# -eq 0 ]; then
    cd $dev_server_path
  else
    ( cd $dev_server_path && vagrant $* )
  fi
}

# Caching problems are way annoying
alias clear-dns-cache="sudo killall -HUP mDNSResponder"

# Super top-secret stuff that has to stay out of this repo
if [ -f ~/.dotfiles/secrets.zsh ]; then
  source ~/.dotfiles/secrets.zsh
fi
