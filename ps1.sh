function git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \(\1\)/'
}

export PS1="\[\e[1;34m\]$\[\e[0m\] "
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~} $(git_branch)\007"'
