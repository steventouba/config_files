# Set history 
HISTSIZE=1000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HIST_STAMPS="yyy-mm-dd"

setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_ignore_space  # don't save history with leading spaces
setopt inc_append_history # save history entries asap
setopt share_history

# Set langauge
export LANG=en_US.UTF-8

# Misc
umask 022
unsetopt beep # Turn beep off 

# Autocomplete
autoload -Uz compinit
compinit

# Functions

# Redo command from history
function redo() {
    fc -e- $1
}
