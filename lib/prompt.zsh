function zle-line-init zle-keymap-select {
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

setopt prompt_subst

export PROMPT='%M$SHELL_DEPTH $(git_prompt_info)%{$fg[yellow]%}%(?.%{$fg[green]%}.%{$fg[red]%})%#%{$reset_color%} '
export RPROMPT='$(vi_mode_prompt_info)%{$fg[green]%}%~%{$reset_color%}'

if [[ $SHLVL -gt 3 ]] ; then
  SHELL_DEPTH="%{${fg[red]}%}+%{$reset_color%}";
fi
