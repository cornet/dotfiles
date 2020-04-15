# Setup fzf
# ---------
if [[ ! "$PATH" == */home/nathan/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/nathan/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/nathan/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/nathan/.fzf/shell/key-bindings.zsh"
