bindkey -v

zle -N nop

# key bindings
# bindkey "\e[1~" beginning-of-line
# bindkey "\e[4~" end-of-line
# bindkey "\e[5~" beginning-of-history
# bindkey "\e[6~" end-of-history
# bindkey "\e[3~" delete-char
# bindkey "\e[2~" quoted-insert
# bindkey "\e[5C" forward-word
# bindkey "\eOc" emacs-forward-word
# bindkey "\e[5D" backward-word
# bindkey "\eOd" emacs-backward-word
# bindkey "\e\e[C" forward-word
# bindkey "\e\e[D" backward-word
# bindkey "^H" backward-delete-word

bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line

# Unmap my weird menu button
bindkey "\e[25~" nop
