# For a guide, see: https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions-howto.org

# Escape special characters with backslashes
# Something like this should (but doesn't) also work:
# while read -r line; do printf "%q\n" "$line"; done
__escape_strings_stdin () {
  sed "s/\([&><()\";\`' ]\)/\\\\\\1/g"
}

_proj_completion() {
  reply=(`{ sed -n -e '/^\[/p' -e '/^\s*$/d' ~/.vimproj | sed -e 's/\[//' -e 's/]//'; /bin/ls ~/projects; /bin/ls ~/.vim/bundle; } | cat | sort | uniq`)
}
compctl -K _proj_completion proj
compctl -K _proj_completion vimproj
compctl -K _proj_completion runproj

_playlist_completion() {
  reply=($(mpc lsplaylists | __escape_strings_stdin))
}
compctl -K _playlist_completion playlist

# Git command completion
zstyle ':completion:*:*:git:*' user-commands \
  pull-merge:'Pulls the given branch and then goes back to the current one and merges it'

_git-pull-merge() {
  _values $(git branch | cut -c 3-)
}
_git-delete-branch() {
  _values $(git branch | cut -c 3-)
}

# Possibility: all git- commands, no descriptions:
# zstyle ':completion:*:*:git:*' user-commands ${${(M)${(k)commands}:#git-*}/git-/}
