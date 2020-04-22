source <(antibody init)
antibody bundle zsh-users/zsh-completions
antibody bundle mafredri/zsh-async
antibody bundle "
robbyrussell/oh-my-zsh path:lib 
robbyrussell/oh-my-zsh path:plugins/fzf
robbyrussell/oh-my-zsh path:plugins/chruby
"

antibody bundle sindresorhus/pure



# Base16 Shell colours
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

PURE_PROMPT_SYMBOL='>>'
PURE_PROMPT_VICMD_SYMBOL='<<'
zstyle :prompt:pure:prompt:success color green

for file in ~/.zsh/*; do
  source "${file}"
done
