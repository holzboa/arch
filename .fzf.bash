# Setup fzf
# ---------
#if [[ ! "$PATH" == */home/zot/.fzf/bin* ]]; then
#  export PATH="${PATH:+${PATH}:}/home/zot/.fzf/bin"
#fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/share/fzf/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/usr/share/fzf/key-bindings.bash"

#meine
#---------------
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"

#export FZF_CTRL_T_OPTS="--select-1 --exit-0"

#export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

export FZF_DEFAULT_OPTS='--no-height --no-reverse'

export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

#export FZF_DEFAULT_COMMAND="find . -path '*/\.*' -type d -prune -o -type f -print -o -type l -print 2> /dev/null | sed s/^..//"

#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

#export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"

###############


