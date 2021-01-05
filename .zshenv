export LANG="nl_NL.UTF-8"

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

# Add Python to path
path=("/usr/local/opt/python/libexec/bin" "${path[@]}")

# Add Holman's scripts to path
path=(~/.dotfiles/holman/bin "${path[@]}")

if type nodeenv > /dev/null; then
  NODE_VENV_DIR=~/.nodeenvs

  # shellcheck disable=SC2120
  node-venv() {
    CWD="$(pwd)"
    cd "$NODE_VENV_DIR" || return
    versions=($(ls "$NODE_VENV_DIR"))

    [ "$1" ] && env="$1" || env="${versions[-1]}"
    source "$env/bin/activate"

    cd "$CWD" || return
  }

  _node-venv() {
    reply=($(ls "$NODE_VENV_DIR"))
  }

  compctl -K _node-venv node-venv

  node-venv
fi
