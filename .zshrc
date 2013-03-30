HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
ZSH=$HOME/.oh-my-zsh
ZSH_THEME=dallas

zstyle :compinstall filename '${HOME}/.zshrc'
autoload -Uz compinit
compinit

plugins=(git)
source $ZSH/oh-my-zsh.sh

setopt appendhistory extendedglob nomatch notify
unsetopt autocd beep

set -o vi
alias grep='grep --color=auto'
alias ls='ls --color'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
