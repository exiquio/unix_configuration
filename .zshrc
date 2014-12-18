HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

ZSH=$HOME/.oh-my-zsh
ZSH_THEME=bira

zstyle :compinstall filename '${HOME}/.zshrc'
autoload -U promptinit compinit
compinit
promptinit

plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

setopt appendhistory extendedglob nomatch notify

unsetopt autocd beep

set -o vi

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias open='xdg-open'
alias xclip='xclip -selection -c'
alias pacman='pacmatic'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

ulimit -n 1024

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
