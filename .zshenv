# Make sure Homebrew is first
path=("/usr/local/sbin" "$path[@]")
path=("/usr/local/bin" "$path[@]")

export LANG="nl_NL.UTF-8"

# Source rbenv!
if which rbenv > /dev/null; then eval "$(rbenv init - --no-rehash)"; fi

# Add Composer to $PATH
COMPOSER_BIN_PATH=~/.composer/vendor/bin
if [ -d $COMPOSER_BIN_PATH ] ; then
  path=($COMPOSER_BIN_PATH "$path[@]")
fi

# Source z
. /usr/local/etc/profile.d/z.sh

# Make sure $PATH only contains unique values
typeset -U path
