#!/bin/bash
########################################################
# setup_acute_linux.sh
# script to setup development folder structure on a new 
# linux install.
########################################################

cur_fldr=$(pwd)

py_projects="AIKIF "
py_projects+="dev_setup "
py_projects+="Acute-Utilities "
py_projects+="acute-experiments "
py_projects+="lifepim "   # public version on github
py_projects+="LifePIM "   # private version on bitbucket
py_projects+="rawdata "
py_projects+="virtual-AI-simulator "
py_projects+="worldbuild "

html_projects="aikif.com "
html_projects+="acuteweb "


echo "Installing Acute folder structure in $cur_fldr"
mkdir dev;
cd dev;
mkdir src;
cd src;
mkdir python;
cd python;

for proj in $py_projects;
do
    echo "Creating $proj";
    cd /home/duncan/dev/src/python;
    mkdir $proj;
    cd $proj;
    git init;
    git remote add origin https://github.com/acutesoftware/$proj.git;
    git pull origin master;

done;




