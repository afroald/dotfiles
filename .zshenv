export LANG="nl_NL.UTF-8"

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load antigen
# shellcheck source=antigen/antigen.zsh
source "$HOME/.dotfiles/antigen/antigen.zsh"
antigen init "$HOME/.dotfiles/.antigenrc"

# Add user binaries to path
path=(~/.local/bin "${path[@]}")

# Source rbenv!
if type rbenv > /dev/null; then
  eval "$(rbenv init - --no-rehash)"
  RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
  export RUBY_CONFIGURE_OPTS
fi

# Add Composer to path
COMPOSER_BIN_PATH=~/.composer/vendor/bin
if [ -d $COMPOSER_BIN_PATH ] ; then
  path=("$COMPOSER_BIN_PATH" "${path[@]}")
fi

if [ -f "$HOME/.cargo/env" ]; then
  . "$HOME/.cargo/env"
fi

# Set nvim as default editor
export VISUAL=nvim
export EDITOR="$VISUAL"
