zmodload zsh/zprof
PATH=/opt/homebrew/bin:$PATH
source <(antibody init)

# Tell oh-my-zsh where it lives
# https://github.com/getantibody/antibody/issues/261#issuecomment-428286883
ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"

antibody bundle "
robbyrussell/oh-my-zsh
robbyrussell/oh-my-zsh path:plugins/fzf
"
antibody bundle zsh-users/zsh-completions
antibody bundle wfxr/forgit
# antibody bundle jeffreytse/zsh-vi-mode

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
