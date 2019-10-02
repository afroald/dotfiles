export LANG="nl_NL.UTF-8"

# Load antigen
. "$HOME/.dotfiles/antigen/antigen.zsh"
antigen init "$HOME/.dotfiles/.antigenrc"

# Source rbenv!
if which rbenv > /dev/null; then eval "$(rbenv init - --no-rehash)"; fi

# Add Composer to path
COMPOSER_BIN_PATH=~/.composer/vendor/bin
if [ -d $COMPOSER_BIN_PATH ] ; then
  path=("$COMPOSER_BIN_PATH" "${path[@]}")
fi

# Add Python to path
path=("/usr/local/opt/python/libexec/bin" "${path[@]}")

# Add Holman's scripts to path
path=(~/.dotfiles/holman/bin "${path[@]}")

# Add sqlite to path
path=($(brew --prefix sqlite)/bin "${path[@]}")

NODE_VENV_DIR=~/.nodeenvs

node-venv() {
  CWD="$(pwd)"
  cd "$NODE_VENV_DIR"
  versions=($(ls "$NODE_VENV_DIR"))

  [ "$1" ] && env="$1" || env="${versions[-1]}"
  source "$env/bin/activate"

  cd "$CWD"
}

_node-venv() {
  reply=($(ls "$NODE_VENV_DIR"))
}

compctl -K _node-venv node-venv

node-venv
