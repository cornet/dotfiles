###############################################################################
# Shell Options
###############################################################################
# history optons
export HISTSIZE=5000
export SAVEHIST=5000
export HISTFILE=~/.zsh_history
export HISTORY_IGNORE="clear && exec '/usr/local/bin/csshX' *"
setopt inc_append_history share_history

# Globbing Options
setopt extended_glob case_glob

# I/O Options
setopt short_loops

# Job Control
setopt auto_resume notify

# ZLE Bindings
bindkey -e
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
MAGENTA="%{"$'\033[01;35m'"%}"
BOLD="%{"$'\033[01;39m'"%}"
NORM="%{"$'\033[00m'"%}"

export PS1="${GREEN}>> ${BLUE}%(5~|%-1~/…/%3~|%4~)\$vcs_info_msg_0_ $ ${NORM}"

# Load VCS info
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats " ${YELLOW}%b${NORM}"

# Say what we are doing in terminal window title
case $TERM in
	xterm*)
		precmd () {print -Pn "\e]0;%n@%m: %~\a"}
	;;
esac

fpath=($HOME/.zsh/completions $fpath)
autoload -Uz compinit && compinit
zmodload -i zsh/complist

# Base16 Shell colours
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

###############################################################################
# Aliases
###############################################################################
if [[ "$OSTYPE" = darwin* ]]; then
  alias ls="ls -G"
else
  alias ls="ls --color=auto"
fi

# Anti-Screwup
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Calculator
alias c='noglob perl -e '\''$_="@ARGV";s/\^/**/g;y/x/*/;print eval $_, "\n"'\'''

# Vim with ruby support
alias vim="NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"
alias vi="NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"

alias cat=bat

###############################################################################
# Exports
###############################################################################
export EDITOR="nvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.fzf.zshrc

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

chruby ruby-2.5.3

export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export MANPATH=/usr/local/share/man:$MANPATH

if [[ "$OSTYPE" = darwin* ]]; then
  alias dk="chruby-exec 2.7.0 -- devkit"

  eval "$(direnv hook zsh)"

  export AWS_ASSUME_ROLE_TTL=1h

  export PATH=$PATH:/Users/nathan/node_modules/.bin:/usr/local/opt/percona-server56/bin
  export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
  export PATH="/usr/local/opt/python/libexec/bin:$PATH"
  export PATH="/usr/local/opt/libxml2/bin:$PATH"

  export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"
else
  export PATH=$PATH:/usr/local/go/bin
fi
