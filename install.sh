# dotfiles directory
dir=$HOME/.dotfiles 

# list of files/folders to symlink in homedir
files=".bashrc .bash_profile .gitconfig .tmux.conf"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd "$dir"
echo "...done"

# directory to store old dotfiles
mkdir -p "$HOME/old_dotfiles"

# create symlinks 
for file in $files; do
    echo "Creating symlink to $file in home directory."
    if [ -f "$HOME/$file" ]; then
        mv "$HOME/$file" "$HOME/old_dotfiles/$file"
    fi
    ln -s "$dir/$file" "$HOME/$file"
done