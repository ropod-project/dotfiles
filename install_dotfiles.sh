#! /bin/bash

# copy files/directories to ~ directory
cp ./vimrc ~/.vimrc
cp -r ./vim/ ~/.vim/
cp ./bashrc ~/.bashrc
cp ./bash_aliases ~/.bash_aliases

# make .rangerdir in ~ direcotry
touch ~/.rangerdir

# source bashrc
source ~/.bashrc
