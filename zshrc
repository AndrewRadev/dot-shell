source ~/.shell/shared/aliases.sh
source ~/.shell/shared/path.sh
source ~/.shell/shared/functions.sh

source ~/.shell/zsh/options.zsh
source ~/.shell/zsh/functions.zsh
source ~/.shell/zsh/keys.zsh
source ~/.shell/zsh/prompt.zsh
source ~/.shell/zsh/ssh-agent.zsh

[[ -s ~/.shell/local_shared ]] && source ~/.shell/local_shared

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
return 0
