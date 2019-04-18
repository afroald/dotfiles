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

# Load nvm if present
export NVM_DIR="$HOME/.dotfiles/nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
    # Load nvm but don't use it yet: we need to do some other hacks first.
    # See https://github.com/creationix/nvm/issues/1261#issuecomment-366879288
    . "$NVM_DIR/nvm.sh" --no-use
    # I don't need this check, and it's slow (loads npm).
    # Do not use the npm `prefix` config; do not report related bugs to nvm ;)
    nvm_die_on_prefix() {
        return 0
    }
    # This also loads npm; let's just skip it.
    nvm_print_npm_version() {
        return 0
    }
    # nvm_resolve_local_alias can also be slow; cache it.
    if [ -s "$HOME/.dotfiles/_nvm_default_version" ]; then
        NVM_AUTO_LOAD_VERSION=$(cat "$HOME/.dotfiles/_nvm_default_version")
    else
        NVM_AUTO_LOAD_VERSION=$(nvm_resolve_local_alias default)
        echo "$NVM_AUTO_LOAD_VERSION" > "$HOME/.dotfiles/_nvm_default_version"
    fi
    nvm use --silent "$NVM_AUTO_LOAD_VERSION"
fi

# Add Python to path
path=(~/Library/Python/3.6/bin "${path[@]}")

# Add Holman's scripts to path
path=(~/.dotfiles/holman/bin "${path[@]}")

# Add sqlite to path
path=($(brew --prefix sqlite)/bin "${path[@]}")
