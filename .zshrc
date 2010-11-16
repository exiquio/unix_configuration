# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
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
prompt elite green white 

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
export JDK_HOME=${JAVA_HOME}
export JRE_HOME=${JAVA_HOME}
export JRUBY_HOME=/opt/local/jruby
export CATALINA_HOME=/srv/tomcat
export DEPOT=${HOME}/depot
export C2LIB=${DEPOT}/c2_lib_trunk/lib
export C2ENV=DEV
export STRATA_HOME=${DEPOT}/c2_connector_trunk/src/ruby
export CHARLES_HOME=/opt/local/charles
export ADK_HOME=/opt/android-sdk
export ANT_HOME=/usr/share/java/apache-ant
export PATH="${PATH}:${HOME}/bin:$CHARLES_HOME/bin:${ADK_HOME}/tools:${JRUBY_HOME}/bin:${JAVA_HOME}/bin:${ANT_HOME}/bin:${CATALINA_HOME}/bin"

# Aliases
alias cp='cp -v'
alias grep='grep -i --color=auto'
alias ls='ls --color=auto'

# Evals
eval `dircolors -b`
