autoload colors; colors;

# Do nothing
function nop() { }

# Use vim as a man viewer
function vimman() { vim -R -c "Man $1 $2" -c "bdelete 1"; }

# Extract Stuff
extract () {
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2)   tar xvjf $1   ;;
      *.tar.gz)    tar xvzf $1   ;;
      *.bz2)       bunzip2 $1    ;;
      *.rar)       unrar e $1    ;;
      *.gz)        gunzip $1     ;;
      *.tar)       tar xvf $1    ;;
      *.tbz2)      tar xvjf $1   ;;
      *.tgz)       tar xvzf $1   ;;
      *.zip)       unzip $1      ;;
      *.Z)         uncompress $1 ;;
      *.7z)        7z x $1       ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# get the name of the branch we are on
function git_prompt_info() {
  if [[ -d .git ]];
  then
    ref=$(cat .git/HEAD)
    echo "%{$fg[blue]%}(${ref#ref: refs/heads/})%{$fg[reset]%}"
  elif [[ -f .git ]]
  then
    gitdir=$(cat .git)
    gitdir=${gitdir#gitdir: }
    ref=$(cat $gitdir/HEAD)
    echo "%{$fg[blue]%}(${ref#ref: refs/heads/})%{$fg[reset]%}"
  fi
}

function vi_mode_prompt_info() {
  MODE_INDICATOR="%{$fg_bold[red]%}<<<%{$reset_color%}"
  echo "${${KEYMAP/vicmd/$MODE_INDICATOR}/(main|viins)/}"
}
