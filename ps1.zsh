function git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \(\1\)/'
}

export PS1='%F{12}$ %f'

export PROMPT_COMMAND='echo -ne "$(basename "$(dirname $PWD)")/$(basename $PWD) $(git_branch)"'
precmd() { eval "$PROMPT_COMMAND" }
