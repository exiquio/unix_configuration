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

#autoload -U promptinit
#promptinit
#prompt adam2 white green green

ZSH=$HOME/.oh-my-zsh
ZSH_THEME=dallas
plugins=(git)
source $ZSH/oh-my-zsh.sh

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

export JRUBY_HOME="/opt/jruby"
export JRUBY_OPTS="--1.8"

export JAVA_HOME="/opt/java6"
export J2SDKDIR="/opt/java6"

rm "~/code/jackrabbit/hotel_scraper/log/mechanize.log"
export LOG_MECHANIZE=1
#export _JAVA_AWT_WM_NONREPARENTING="1"


export USE_CCACHE="1"
export CODE_HOME="${HOME}/code"
export DWT_REPO="${CODE_HOME}/dwt"
export ADK_HOME="/opt/android-sdk"
export ANT_HOME="/usr/share/java/apache-ant"
export MYSQL_HOME="/usr/local/mysql/bin"
export PERSONAL_CODE_HOME="${CODE_HOME}/personal"
export REPOS="${PERSONAL_CODE_HOME}/LinuxScripts:${PERSONAL_CODE_HOME}/BodyBuilder:${DWT_REPO}"
source /etc/profile
export PATH="${PATH}:${HOME}/bin:${MYSQL_HOME}:${ADK_HOME}/tools:${ADK_HOME}/platform-tools:/bin:${GEM_HOME}/bin:${HEROKU_HOME}:/opt/local/bin"
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"

# Aliases
alias cp='cp -v'
alias grep='grep --color=auto'
alias ls='ls -G'
#alias open='xdg-open'
#alias xclipboard='xclip -i -selection clipboard'
#alias python='python2.7'
#alias ruby='ruby -w'
#alias irb='pry'
#alias chrome='chromium'
alias vim="/opt/local/bin/vim"
alias admin_screen='screen_session.rb admin'
alias recipe_screen='screen_session.rb recipe'

# Evals
#eval `dircolors -b`

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
rm "${HOME}/code/jackrabbit/hotel_scraper/log/mechanize.log"
