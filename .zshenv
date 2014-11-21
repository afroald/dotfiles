# Make sure Homebrew is first
path=("/usr/local/bin" "$path[@]")
path=("/usr/local/sbin" "$path[@]")

# Source nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Source rbenv!
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Add PHP 5.6 to $PATH
PHP56_BIN_PATH="$(brew --prefix homebrew/php/php56)/bin"
if [ -d $PHP56_BIN_PATH ] ; then
  path=($PHP56_BIN_PATH "$path[@]")
fi

# Add Composer to $PATH
COMPOSER_BIN_PATH=~/.composer/vendor/bin
if [ -d $COMPOSER_BIN_PATH ] ; then
  path=($COMPOSER_BIN_PATH "$path[@]")
fi

# Add the postgresql binaries from Postgres.app to $PATH, if the app is installed
POSTGRES_APP_BIN_PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin"
if [ -d $POSTGRES_APP_BIN_PATH ] ; then
    path=($POSTGRES_APP_BIN_PATH "$path[@]")
fi

# Make sure $PATH only contains unique values
typeset -U path
