source ~/.shell/lib/path.zsh
source ~/.shell/lib/functions.zsh
source ~/.shell/lib/aliases.zsh
source ~/.shell/lib/options.zsh
source ~/.shell/lib/completion.zsh
source ~/.shell/lib/keys.zsh
source ~/.shell/lib/prompt.zsh
source ~/.shell/lib/ssh-agent.zsh

export EDITOR=vim
export TERM=xterm-color

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
return 0

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
