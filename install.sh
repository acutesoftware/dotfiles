#!/bin/bash
########################################################
# install.sh
# Script to run on new VM to backup dotfiles
# and copy standard ones to home
########################################################

master=~/dev/dotfiles           # master dotfiles directory
olddir=~/dev/dotfiles_old       # old dotfiles backup directory

# list of files/folders to copy
files=".bashrc .gitconfig p"                 

# list of packages to install
packages_to_install="python-pip git xchat wine1.7 python-virtualenv libjpeg-dev"

if [ -d $olddir ]; 
then
    # backup directory has already been created by this script so
    # install latest dotfiles by copying from the master /dev/dotfiles
    # folder to home (along with useful scripts)
    echo "Installing latest scripts and dot files from $master to ~ "
    for file in $files; 
    do
        cp $master/$file ~/$file

    done
    
else
    # backup directory doesnt exist yet, so this is a fresh install
    #create backup folder and copy and existing files there 
    
    echo "Creating $olddir for backup of any existing dotfiles in ~"
    mkdir -p $olddir

    for file in $files; 
    do
        echo "Backing up $file from ~ to $olddir"
        cp ~/$file $olddir/$file.orig

    done
    
    # now run apt-get to install standard packages
    echo "About to install the packages : $packages_to_install"
    for package in $packages_to_install;
    do
        echo "Installing pacakge $package"
        sudo apt-get install $package
    done
fi

# pip install packages required
# for PIL on linux, you need:
#   sudo apt-get install libjpeg-dev
#   sudo ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib
#   sudo ln -s /usr/lib/x86_64-linux-gnu/libfreetype.so /usr/lib
#   sudo ln -s /usr/lib/x86_64-linux-gnu/libz.so /usr/lib
#   pip install --user -I pillow

