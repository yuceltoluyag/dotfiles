# Setup fzf
# ---------
if [[ ! "$PATH" == */home/friday13/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/friday13/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/friday13/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/friday13/.fzf/shell/key-bindings.bash"
