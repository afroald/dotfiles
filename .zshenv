# Make sure Homebrew is first
path=("/usr/local/sbin" "$path[@]")
path=("/usr/local/bin" "$path[@]")

# Source nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Source rbenv!
if which rbenv > /dev/null; then eval "$(rbenv init - --no-rehash)"; fi


# Make sure $PATH only contains unique values
typeset -U path
