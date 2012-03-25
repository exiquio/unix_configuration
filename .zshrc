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
export JAVA_HOME="/opt/java6"
export JDK_HOME=${JAVA_HOME}
export JRE_HOME=${JAVA_HOME}
export USE_CCACHE=1
#export JRUBY_HOME="/opt/local/jruby"
#export CATALINA_HOME="/srv/tomcat"
export CODE_HOME="${HOME}/code"
export DWT_REPO="${CODE_HOME}/dwt"
#export C2LIB="${DWT_REPO}/c2_lib_trunk/lib"
#export C2ENV="DEV"
#export C2_CONNECTOR_HOME="${DWT_REPO}/c2_connector_trunk"
#export C2_CONNECTORS="${C2_CONNECTOR_HOME}/connector"
#export STRATA_HOME="${C2_CONNECTORS}/ruby"
#export C2_TEST_BASEDIR="${STRATA_HOME}"
#export CHARLES_HOME="/opt/local/charles"
export ADK_HOME="/opt/android-sdk"
export ANT_HOME="/usr/share/java/apache-ant"
export PERSONAL_CODE_HOME="${CODE_HOME}/personal"
export REPOS="${PERSONAL_CODE_HOME}/LinuxScripts:${PERSONAL_CODE_HOME}/BodyBuilder:${DWT_REPO}"
export PATH="${PATH}:${HOME}/bin:${ADK_HOME}/tools:${ADK_HOME}/platform-tools:${JAVA_HOME}/bin"
#export PATH="${PATH}:${HOME}/bin:$CHARLES_HOME/bin:${ADK_HOME}/tools:${ADK_HOME}/platform-tools:${JRUBY_HOME}/bin:${JAVA_HOME}/bin:${ANT_HOME}/bin:${CATALINA_HOME}/bin"

# Aliases
alias cp='cp -v'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias open='xdg-open'

# Evals
eval `dircolors -b`
