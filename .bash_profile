alias mycc="cc -std=c99 -Wall -pedantic -Werror"
alias dev="cd /mnt/d/dev"
alias gs="git status"

# Customise ls
alias ls='ls --color=auto'
LS_COLORS="fi=03:ex=03:ow=94"
export LS_COLORS

# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi