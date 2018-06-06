Dotfiles van Roald Hacquebord
=============================
## I N S T A L L E R E N
### Stap 1: ZSH Shell
Installeer ZSH:
`brew install zsh`

Voeg ZSH toe als mogelijke shell:
`sudo echo /usr/local/bin/zsh >> /etc/shells`

Stel ZSH in als default shell:
`chsh -s /usr/local/bin/zsh`

### Stap 2: Dotfiles installeren
Clone deze repo naar hidden directory:

```
git clone https://github.com/afroald/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
git submodule init
git submodule update
```

Maak symlinks van homedirectory naar repo:
`~/.dotfiles/install.sh`

### Stap 3: Open nieuwe shell

## Inspiratie:
- https://github.com/holman/dotfiles
