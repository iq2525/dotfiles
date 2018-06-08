# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# mv, rm, cp
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

#Git Branch

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="______ | \$(parse_git_branch) \w \n| => "
export PS2="| => "

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias la='ls -GFhla'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
