#! /bin/bash

# take backup
echo "Backing up current dotfiles"
if [ ! -d "$HOME/backup_dotfiles" ]; then
    mkdir ~/backup_dotfiles
fi
mv ~/.bashrc ~/backup_dotfiles/bashrc
mv ~/.vimrc ~/backup_dotfiles/vimrc
mv ~/.bash_aliases ~/backup_dotfiles/bash_aliases
mv ~/.vim/ ~/backup_dotfiles/vim

# copy files/directories to ~ directory
echo "Copying dotfiles from current folder"
cp ./vimrc ~/.vimrc
cp -r ./vim/ ~/.vim/
cp ./bashrc ~/.bashrc
cp ./bash_aliases ~/.bash_aliases

# make .rangerdir in ~ directory
touch ~/.rangerdir

# Message for use
echo "Dotfiles installed"
echo ""
echo "######################################"
echo "#  Please execute 'source ~/.bashrc' #"
echo "######################################"
