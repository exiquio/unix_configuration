# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory extendedglob nomatch notify
unsetopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '${HOME}/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


###########################################################
# User Added #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

autoload -U promptinit
promptinit
prompt adam2 white green green

# Exports
export GREP_COLOR="1;33"
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;44;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;32m'

export IRCNICK="exiquio"
export IRCSERVER="irc.freenode.net"

export EDITOR="vim"
export BROWSER="chromium"

export GEM_HOME="${HOME}/.gem/ruby/1.9.1"
export HEROKU_HOME="/opt/heroku-client"
export HEROKU_RUN_STATE='development'
export GOOGLE_API_KEY='AIzaSyDMX-eepk-P8ndmNnmpeDtOIDz5acgo4Kk' # FIXME remove and find a good way to do this externally

export JRUBY_HOME="/opt/jruby"
export JRUBY_OPTS="--1.8"

export JAVA_HOME="/opt/java"
export JDK_HOME=${JAVA_HOME}
export JRE_HOME=${JAVA_HOME}
export _JAVA_AWT_WM_NONREPARENTING="1"


export USE_CCACHE="1"
export CODE_HOME="${HOME}/code"
export DWT_REPO="${CODE_HOME}/dwt"
export ADK_HOME="/opt/android-sdk"
export ANT_HOME="/usr/share/java/apache-ant"
export PERSONAL_CODE_HOME="${CODE_HOME}/personal"
export REPOS="${PERSONAL_CODE_HOME}/LinuxScripts:${PERSONAL_CODE_HOME}/BodyBuilder:${DWT_REPO}"
export PATH="${PATH}:${HOME}/bin:${ADK_HOME}/tools:${ADK_HOME}/platform-tools:${JAVA_HOME}/bin:${GEM_HOME}/bin:${HEROKU_HOME}"

# Aliases
alias cp='cp -v'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias open='xdg-open'
alias xclipboard='xclip -i -selection clipboard'
alias python='python2.7'
alias ruby='ruby -w'
alias chrome='chromium'

# Evals
eval `dircolors -b`
