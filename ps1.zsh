function git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \(\1\)/'
}

export PROMPT='%F{12}$ %f'

export PROMPT_COMMAND='echo -ne "\033]0;$(basename "$(dirname $PWD)")/$(basename $PWD) $(git_branch)\007"'
precmd() { eval "$PROMPT_COMMAND" }
