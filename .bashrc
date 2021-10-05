# aliases
alias mycc="cc -std=c99 -Wall -pedantic -Werror"
alias gs="git status"
alias python=python3

# detect git bash or wsl
if [ "$(uname)" == "Linux" ]; then
    D_DRIVE="/mnt/d"
else
    D_DRIVE="/d"
fi

alias dev="cd $D_DRIVE/dev"
TODO_DIR="$D_DRIVE/dev/todo"
PATH="$PATH:$D_DRIVE/path"

# Customise ls
alias ls='ls --color=auto'
LS_COLORS="fi=03:ex=03:ow=94"
export LS_COLORS


# git
. ~/.dotfiles/git-completion.bash
. ~/.dotfiles/git-prompt.sh

# export GIT_PS1_SHOWDIRTYSTATE=1
export GPG_TTY=$(tty)

export PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u \[\033[35m\](\@) \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ '

# greeting prompt

# use lolcat if available
if command -v lolcat &> /dev/null
then
    lolcat "$HOME/.dotfiles/banner.txt"
else
    cat "$HOME/.dotfiles/banner.txt"
fi

echo "TODOs"
echo ""
pushd $TODO_DIR > /dev/null
python list_todo.py
popd > /dev/null


# place extra settings you dont want checked into version control in a file called ~/.external.sh
if [ -f "$HOME/.external.sh" ]; then
    . "$HOME/.external.sh"
fi
