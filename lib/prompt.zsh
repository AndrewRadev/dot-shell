setopt prompt_subst
autoload colors; colors;

function maybe_shell_depth() {
  if [[ $SHLVL -gt 1 ]] ; then
    echo "%{${fg[red]}%}+%{$reset_color%} ";
  else
    echo '';
  fi
}

export PROMPT="$(maybe_shell_depth)%M %{${fg[green]}%}%#%{$reset_color%} "
export RPROMPT="%{${fg[green]}%}%~%{$reset_color%}"
