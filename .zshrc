# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew cp extract git npm terminalapp vagrant)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Add the postgresql binaries from Postgres.app to $PATH, if the app is installed
POSTGRES_APP_BIN_PATH="/Applications/Postgres93.app/Contents/MacOS/bin"
if [ -d $POSTGRES_APP_BIN_PATH ] ; then
    path=($POSTGRES_APP_BIN_PATH "$path[@]")
fi

# Sublime Text is the best.
EDITOR="subl -w"

# Source syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Source zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Load the online help
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

# Add an alias for dotfiles
alias dotfiles="subl ~/.dotfiles"

# Add an alias for Hub
alias git=hub

# Alias a quick http server
alias http="php -S localhost:3000"

# Alias for ssh'ing my vps
alias vps2="ssh vps2.roaldhacquebord.nl"

# Alias for fixing an isssue with IconServicesAgent
alias fixisa="mkdir ${TMPDIR}/com.apple.IconServices"

# Alias for unsafe Google Chrome
alias unsafechrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome -disable-web-security"
