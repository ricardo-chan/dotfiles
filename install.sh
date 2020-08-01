#!/bin/bash
########################
# install.sh
# This script creates symlinks from the home directory to any desired dotfiles in $HOME/dotfiles
# Any existing dotfiles will be saved to a backup folder called dotfiles_old
########################

########## Variables

dir=$HOME/dotfiles             # dotfiles directory
backupdir=$HOME/dotfiles_old   # where existing dotfiles will be placed
files=".bash_profile .gitconfig git-completion.bash git-prompt.sh" # list of files to symlink in $HOME

##########

# Create dotfiles_old directory for backup in $HOME
echo -n "Creating $backupdir for backup of any existing files in $HOME..."
[ -d $backupdir ] && rm -rf $backupdir
mkdir -p $backupdir
mkdir -p $backupdir/.config
echo "...done"


# Change to the dotfiles directory
echo -n "Changing to $dir directory..."
cd $dir
echo "...done"

# Move wanted dotfiles in $HOME to backup directory, then create symlinks
for file in $files; do
    echo "Moving existing $file from home directory to $backupdir"
    mv $HOME/$file $backupdir/
    echo "Creating symlink to $file in home directory"
    ln -sf $dir/$file $HOME/$file
done

# Create .config directory if it doesn't exist
[ ! -d $HOME/.config ] && mkdir $HOME/.config

# Move existing files in $HOME/.config/nvim to backup directory
echo "Moving existing .config files to $backupdir"
[ -d $HOME/.config/nvim ] && mv $HOME/.config/nvim $backupdir/.config/

# Create symlink for config files
echo "Creating symlink to .config/nvim in home directory"
ln -sf $dir/config/nvim $HOME/.config/nvim

echo "Done!"
echo "Feel free to remove the dotfiles_old directory if you're sure you don't need it"
