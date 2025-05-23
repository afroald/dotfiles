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

# Nifty stuff
if (( $+commands[jump] ));
then
  eval "$(jump shell)"
fi

# Optimizing my shell game
alias ls="eza"
alias ll="eza -l"
alias lla="eza -la"
alias current-branch="git rev-parse --abbrev-ref HEAD"

# k8s stuff
alias k="kubectl"
alias kns="kubens"
alias kctx="kubectx"
alias dc="docker compose"

# macOS stuff
function fix-macos-zsh-config() {
  echo "Patching default prompt in /etc/zshrc"
  sudo sed -i .original "s/^PS1=/# PS1=/" /etc/zshrc

  if [ -f /etc/zprofile ];
  then
    echo "Moving /etc/zprofile to /etc/zshenv"
    sudo mv /etc/zprofile /etc/zshenv
  fi
}

function flush-dns-cache() {
  sudo dscacheutil -flushcache
  sudo killall -HUP mDNSResponder
}

# Load ssh keys from keychain in background
() {
  setopt LOCAL_OPTIONS NO_MONITOR
  ssh-add --apple-load-keychain &> /dev/null & disown
}

export PURE_PROMPT_SYMBOL="(づ￣ ³￣)づ"

# Completions
FPATH="$HOME/.dotfiles/zsh-completions:$FPATH"
autoload -Uz compinit
compinit
