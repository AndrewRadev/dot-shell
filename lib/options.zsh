# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt share_history
setopt hist_verify
setopt hist_ignore_dups
setopt inc_append_history
setopt hist_ignore_space

# Automatic pushd
setopt auto_pushd
setopt pushd_ignore_dups

# Prompts for confirmation after 'rm *'
setopt rm_star_wait

# Background processes aren't killed on exit of shell
setopt auto_continue
setopt no_hup

setopt auto_menu # show completion menu on succesive tab press
setopt complete_in_word
setopt always_to_end
