zmodload zsh/zprof
PATH=/opt/homebrew/bin:$PATH

source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load

bindkey -v 

# Handy functions
is_osx() {
  [[ "${OSTYPE}" = darwin* ]]
}

cmd_exists() {
  (( ${+commands[$1]} ))
}

# Revert ls(1) to default system colours on OS X
is_osx && unset LSCOLORS

for file in ~/.zsh/*; do
  source "${file}"
done

# Tells 'less' not to paginate if less than a page
export LESS="-F -X $LESS"

eval "$(starship init zsh)"

PATH=$PATH:/home/nathan/010editor;export PATH; # ADDED BY INSTALLER - DO NOT EDIT OR DELETE THIS COMMENT - 87FF8EFC-483D-BCAA-D67D-735CF60410D1 7B868C8A-7FD6-13EE-B16B-FE7EFF9905DD

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
