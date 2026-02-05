zmodload zsh/zprof

# Handy functions
function is_osx() {
  [[ "${OSTYPE}" = darwin* ]]
}

function cmd_exists() {
  (( ${+commands[$1]} ))
}

function path_prepend() {
  if [ -d "$1" ]; then
    PATH="$1":$PATH
  fi
}

function path_append() {
  if [ -d "$1" ]; then
    PATH=$PATH:"$1"
  fi
}

path_prepend ~/bin
path_prepend /usr/local/bin

path_prepend /opt/homebrew/bin
path_prepend /home/linuxbrew/.linuxbrew/bin

path_append /usr/local/sbin
path_append /usr/sbin
path_append /sbin

eval "$(brew shellenv)"

bindkey -v 

if command -v brew >/dev/null; then
  source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
else
  source ~/.antidote/antidote.zsh
fi

antidote load

# Revert ls(1) to default system colours on OS X
is_osx && unset LSCOLORS

for file in ~/.zsh/*; do
  source "${file}"
done

# Tells 'less' not to paginate if less than a page
export LESS="-F -X $LESS"

eval "$(starship init zsh)"

if is_osx; then
  export AWS_VAULT_KEYCHAIN_NAME=login
  export AWS_VAULT_PROMPT=osascript
  export AWS_SDK_LOAD_CONFIG=1
  export OPS_SSO_ENABLED=true
  
  # Source automated FreeAgent shell config
  source /Users/nathanhoward/.freeagent_shell_profile
fi

# Reload fzf or keybindings get removed by zsh-vi-mode :(
function zvm_after_init() {
  fzf_plugin="$(antidote path ohmyzsh/ohmyzsh)/plugins/fzf/fzf.plugin.zsh"
  [ -f "$fzf_plugin" ] && source "$fzf_plugin"
}

alias shipit="BUNDLE_GEMFILE=/Users/nathanhoward/dev/hackdays-shipit/Gemfile aws-vault exec nathan-dev-full -- bundle exec /Users/nathanhoward/dev/hackdays-shipit/bin/shipit"
