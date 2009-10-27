###############################################################################
# Shell Options
###############################################################################
# history optons
export HISTSIZE=5000
export SAVEHIST=5000
export HISTFILE=~/.zsh_history
setopt inc_append_history share_history

# Globbing Options
setopt extended_glob case_glob

# I/O Options
setopt short_loops

# Job Control
setopt auto_resume notify

# ZLE Bindings
bindkey -v
bindkey '' beginning-of-line
bindkey '' end-of-line
bindkey '' history-incremental-search-backward
bindkey 'OA' up-line-or-history
bindkey 'OB' down-line-or-history


###############################################################################
# Prompt & Title
###############################################################################
# Define some Colors
BLACK="%{"$'\033[01;30m'"%}"
GREEN="%{"$'\033[01;32m'"%}"
RED="%{"$'\033[01;31m'"%}"
YELLOW="%{"$'\033[01;33m'"%}"
BLUE="%{"$'\033[01;34m'"%}"
BOLD="%{"$'\033[01;39m'"%}"
NORM="%{"$'\033[00m'"%}"

export PS1="${GREEN}%n@%m${BLUE} %~ $ ${NORM}"

# Say what we are doing in terminal window title
case $TERM in
	xterm*)
		precmd () {print -Pn "\e]0;%n@%m: %~\a"}
	;;
esac


###############################################################################
# Aliases
###############################################################################
# Colour :)
alias d="ls --color"
alias ls="ls --color=auto"
alias ll="ls --color -l"
alias grep="grep --color=auto"

# Anti-Screwup
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Calculator
alias c='noglob perl -e '\''$_="@ARGV";s/\^/**/g;y/x/*/;print eval $_, "\n"'\'''

###############################################################################
# Exports
###############################################################################
export EDITOR="vim"
