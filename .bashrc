. ~/.dotfiles/git-completion.bash
. ~/.dotfiles/git-prompt.sh
# export GIT_PS1_SHOWDIRTYSTATE=1
alias python=python3
export GPG_TTY=$(tty)
export PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u \[\033[35m\](\@) \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ '
