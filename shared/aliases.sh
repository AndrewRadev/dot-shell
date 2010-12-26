alias sudo='sudo -E'

alias ls='ls -h --color=always --group-directories-first'
alias lss='ls -1'
alias lsl='ls -l'
alias lsa='ls -a'
alias lsal='ls -al'

alias cal='cal -m'

alias cdu='cdu -idh'
alias cdf='cdf -h'

alias snes='snes9x -r 7 -y3'
alias gvim='gvim -geometry 999x999'
alias clive='clive --format=best'

alias e=vim
alias u='cd ..'

alias ffeh='feh -F'

alias vimfiles='vim -c "Proj vimfiles"'
alias clip='vim +ClipBrd +only'
alias vrename='vim +Rename'

alias vim-white='vim -c "colo thegoodluck"'
alias sf='php symfony --color'

alias svn-missing="svn status | grep ^! | cut -d' ' -f8"
alias svn-unknown="svn status | grep ^? | cut -d' ' -f8"

alias rm-svn='rm -rf `find . -type d -name .svn`'

alias g='git'
alias gst='git status'
alias gc='git commit -v'
alias gca='git commit -av'
alias gdv='git diff -w "$@" | vim -R -'
alias gp='git push'
alias gl='git pull'

alias git-deleted="git status --short | grep D  | cut -b4-"
alias git-unknown="git status --short | grep ?? | cut -b4-"
