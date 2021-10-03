# aliases
alias mycc="cc -std=c99 -Wall -pedantic -Werror"
alias dev="cd /d/dev"
alias gs="git status"

# Customise ls
alias ls='ls --color=auto'
LS_COLORS="fi=03:ex=03:ow=94"
export LS_COLORS

PATH=$PATH:/d/path

# git
. ~/.dotfiles/git-completion.bash
. ~/.dotfiles/git-prompt.sh

# export GIT_PS1_SHOWDIRTYSTATE=1
alias python=python3
export GPG_TTY=$(tty)

export PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u \[\033[35m\](\@) \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ '

# place extra settings you dont want checked into version control in a file called ~/.external.sh
if [ -f "$HOME/.external.sh" ]; then
    . "$HOME/.external.sh"
fi
