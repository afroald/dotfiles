export LANG="nl_NL.UTF-8"

# Set PATH, MANPATH, etc., for Homebrew.
if [ -f "/opt/homebrew/bin/brew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [ -f "/usr/local/bin/brew" ]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# Load antigen
# shellcheck source=antigen/antigen.zsh
source "$HOME/.dotfiles/antigen/antigen.zsh"
antigen init "$HOME/.dotfiles/.antigenrc"

# Add user binaries to path
path=(~/.local/bin "${path[@]}")

# Add binaries installed by cargo to path
if [ -f "$HOME/.cargo/env" ]; then
  . "$HOME/.cargo/env"
fi

# Set nvim as default editor
export VISUAL=nvim
export EDITOR="$VISUAL"
