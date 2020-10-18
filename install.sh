########## Variables

dir=$HOME/.dotfiles                    # dotfiles directory
files=".bashrc .bash_profile .gitconfig"    # list of files/folders to symlink in homedir

##########

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd "$dir"
echo "...done"

# create symlinks 
for file in $files; do
    echo "Creating symlink to $file in home directory."
    if [ -f "$HOME/$file" ]; then
	    rm "$HOME/$file"
    fi
    ln -s "$dir/$file" "$HOME/$file"
done