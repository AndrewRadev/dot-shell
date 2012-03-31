bindkey -v

zle -N nop

bindkey '\e[7~' beginning-of-line
bindkey '\e[8~' end-of-line

# search up/down by taking the current line content into account
bindkey -M viins '^[[A' history-beginning-search-backward
bindkey -M viins '^[[B' history-beginning-search-forward
bindkey -M vicmd 'k' history-beginning-search-backward
bindkey -M vicmd 'j' history-beginning-search-forward

bindkey '^[[Z' reverse-menu-complete

# vi-backward-delete-char is stupid
bindkey -M viins '^?' backward-delete-char

# go up one dir with <C-u>
bindkey -M viins -s ^U "cd ..\C-m"
