source /usr/share/zsh-antigen/antigen.zsh

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
alias rg="rg -H --no-heading"
alias vim="nvim"
alias vi="nvim"

ulimit -n 1024

# Ensure ripgrep is installed
export FZF_DEFAULT_COMMAND='rg --files'
export TERM=xterm-256color
export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim
export VISUAL=nvim

export PATH="$PATH:/home/exiquio/.local/bin:$VIMCONFIG/pack/minpac/start/fzf/bin"

#source $HOME/.zshenv_private

# ANTIGEN
antigen use oh-my-zsh
#   = Plugins
antigen bundle git
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting

#   = THEME
antigen theme robbyrussell

#   = APPLICATION
antigen apply
