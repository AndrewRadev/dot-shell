autoload colors; colors;

# Do nothing
function nop() { }

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
# Note: currently not used, __git_ps1 used instead.
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

function fliptable() {
  echo "（╯°□°）╯︵ ┻━┻";
}

function facepalm() {
  echo "(－‸ლ)";
}

# Given a long-running process in the terminal:
#
#  - Ctrl+Z to suspend it
#  - Run `keep-track`
#  - Output resumes, when done will show a notification with the time it took
#    for the process to run
#
function keep-track() {
  last_command=$(history | tail -1 | cut -d' ' -f3-)
  pid=$(jobs -p | sed 's/.*+\s*\([0-9]\+\) suspended.*/\1/' | head -1)
  start_time=$(date --date="$(ps -p $pid -o lstart | tail -1)" +%s)

  echo "Keeping track of: $pid"

  fg && ding && \
    echo "Done: $last_command, Time: $(expr $(date +%s) - $start_time)s, PID was: $pid" && \
    notify-send \
    --icon=/usr/share/icons/gnome/48x48/status/gtk-dialog-info.png \
    "keep-track" "Done: $last_command, Time: $(expr $(date +%s) - $start_time)s, PID was: $pid"
}

# Create a horizontal line. Given argument is the character to repeat.
#
# Taken from: https://twitter.com/climagic/status/1244685325450055682
#
hr() {
  printf '%0*d' $(tput cols) | tr 0 ${1:-_};
}
