# Make sure Homebrew is first
path=("/usr/local/bin" "$path[@]")
path=("/usr/local/sbin" "$path[@]")

# Source nvm
export NVM_DIR="/Users/roald/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Source rbenv!
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Add PHP to $PATH
PHP_BIN_PATH="$(brew --prefix homebrew/php/php55)/bin"
if [ -d $PHP_BIN_PATH ] ; then
  path=($PHP_BIN_PATH "$path[@]")
fi

# Add the postgresql binaries from Postgres.app to $PATH, if the app is installed
POSTGRES_APP_BIN_PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin"
if [ -d $POSTGRES_APP_BIN_PATH ] ; then
    path=($POSTGRES_APP_BIN_PATH "$path[@]")
fi

# Make sure $PATH only contains unique values
typeset -U path
