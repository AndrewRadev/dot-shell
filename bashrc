source ~/.shell/shared/aliases.sh
source ~/.shell/shared/path.sh
source ~/.shell/shared/functions.sh

source ~/.shell/bash/colors.bash

eval `dircolors`

PS1="\[$txtgrn\]\u@\h \[$txtrst\]\W\[$txtgrn\]>\[$txtrst\] "

export EDITOR=vim
export SVN_MERGE=gvimdiff
export HISTIGNORE="&:ls:exit:rm"

shopt -s extglob

[[ -s ~/.shell/local_shared ]] && source ~/.shell/local_shared

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
return 0
