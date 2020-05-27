source <(antibody init)

# Tell oh-my-zsh where it lives
# https://github.com/getantibody/antibody/issues/261#issuecomment-428286883
ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"

antibody bundle "
robbyrussell/oh-my-zsh
robbyrussell/oh-my-zsh path:plugins/fzf
robbyrussell/oh-my-zsh path:plugins/chruby
"
antibody bundle zsh-users/zsh-completions

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

PAGER=bat

eval "$(starship init zsh)"
