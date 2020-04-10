HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

zstyle :compinstall filename '${HOME}/.zshrc'
autoload -U promptinit compinit
compinit
promptinit

setopt appendhistory extendedglob nomatch notify

unsetopt autocd beep

set -o vi

alias grep='grep --color=auto'
alias ls="ls --color"

ulimit -n 1024

export PATH="$PATH"

#source $HOME/.zshenv_private
