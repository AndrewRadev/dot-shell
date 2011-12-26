alias sudo='sudo -E'
alias man=vimman

alias ls='ls -h --color=always --group-directories-first'
alias lsl='ls -l'

alias cal='cal -m'

alias cdu='cdu -idh'
alias cdf='cdf -h'

alias gvim='gvim -geometry 999x999'

alias vimfiles='vim -c "Proj vimfiles"'
alias vrename='vim +Rename'
alias weather='weather -i LBSF'

alias ree="RUBY_HEAP_MIN_SLOTS=1000000 RUBY_HEAP_SLOTS_INCREMENT=1000000 RUBY_HEAP_SLOTS_GROWTH_FACTOR=1 RUBY_GC_MALLOC_LIMIT=1000000000 RUBY_HEAP_FREE_MIN=500000"

alias g='git'
alias gst='git status'
alias gc='git commit -v'
alias gca='git commit -av'
alias gdv='git diff -w "$@" | vim -R -'
alias gp='git push'
alias gl='git pull'
alias glog='git log --oneline --graph --decorate --branches=\* --abbrev-commit'
alias gr10='git rebase -i HEAD~10'
alias gr5='git rebase -i HEAD~5'

alias be="bundle exec"
alias bo="bundle open"
