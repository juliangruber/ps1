function git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \(\1\)/'
}

export PS1="\[\e[1;34m\] ∴ \[\e[0m\] \W\[\033[32m\]\$(git_branch)\[\033[00m\] : "
