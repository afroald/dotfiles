#!/bin/bash

# Load antigen
# shellcheck source=/dev/null
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
path=(~/Library/Python/3.6/bin "${path[@]}")

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
    if [ -s "$NVM_DIR/_default_version" ]; then
        NVM_AUTO_LOAD_VERSION=$(cat "$NVM_DIR/_default_version")
    else
        NVM_AUTO_LOAD_VERSION=$(nvm_resolve_local_alias default)
        echo "$NVM_AUTO_LOAD_VERSION" > "$NVM_DIR/_default_version"
    fi
    nvm use --silent "$NVM_AUTO_LOAD_VERSION"
fi

# Add an alias for dotfiles
alias dotfiles="cd ~/.dotfiles"

# Alias a quick http server
alias http="php -S localhost:3000"

# Caching problems are way annoying
alias clear-dns-cache="sudo killall -HUP mDNSResponder"

# Super top-secret stuff that has to stay out of this repo
if [ -f ~/.dotfiles/secrets.zsh ]; then
  # shellcheck source=secrets.zsh
  . ~/.dotfiles/secrets.zsh
fi

#shellcheck source=convert-webfont.sh
. "$HOME/.dotfiles/convert-webfont.sh"

# Optimizing my shell game
alias ll="ls -l"
alias lla="ls -la"
alias current-branch="git rev-parse --abbrev-ref HEAD"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
