# Make sure Homebrew is first
path=("/usr/local/bin" "$path[@]")
path=("/usr/local/sbin" "$path[@]")

# Source nvm
export NVM_DIR="/Users/roald/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Source rbenv!
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Add PHP to $PATH
path=("$(brew --prefix homebrew/php/php55)/bin" "$path[@]")

# Make sure $PATH only contains unique values
typeset -U path
