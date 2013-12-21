source ~/.shell/lib/git_prompt.zsh

function zle-line-init zle-keymap-select {
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

setopt prompt_subst

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
# export GIT_PS1_SHOWUNTRACKEDFILES=1
# export GIT_PS1_SHOWUPSTREAM="auto"

export PROMPT='%M$SHELL_DEPTH%{$fg[blue]%}$(__git_ps1)%{$reset_color%} %{$fg[yellow]%}%(?.%{$fg[green]%}.%{$fg[red]%})%#%{$reset_color%} '
export RPROMPT='$(vi_mode_prompt_info)%{$fg[green]%}%~%{$reset_color%}'

if [[ $SHLVL -gt 1 ]] ; then
  SHELL_DEPTH="%{${fg[red]}%}+%{$reset_color%}";
fi
