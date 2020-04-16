# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/nathan/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/nathan/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/nathan/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/nathan/.fzf/shell/key-bindings.bash"
