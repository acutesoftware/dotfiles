#!/bin/bash
########################################################
# p
# Project script to handle moving to folders and setting
# up new git projects
########################################################

py_projects="python/AIKIF "
py_projects+="python/ext-dl "
py_projects+="python/filelist "
py_projects+="python/gfx "
py_projects+="python/lifepim "
py_projects+="python/LifePIM_public "
py_projects+="python/rawdata "
py_projects+="python/tax "
py_projects+="python/virtual-AI-simulator "
py_projects+="python/worldbuild "
py_projects+="python/kaggle/aicomp "
web_projects="html/web2015 "
dot_projects="../dotfiles "

projects=$py_projects$web_projects$dot_projects

cmd=$1
prj=$2
newfolder=""
for proj in $projects;
do
    echo "cmd = $cmd, prj = $prj, proj = $proj";
    if [[ $proj == *$prj* ]]
    then
        newfolder="/home/duncan/dev/src/"$proj;
        echo $newfolder
        case ${cmd} in 
        "j")
            echo "Changing to $newfolder";
            cd $newfolder;
            ls -lart
            ;;
        "g")
            echo "Git status of $newfolder"
            cd $newfolder;
            git status
            ;;
        "t")
            echo "Testing $newfolder"
            cd $newfolder;
            cd "tests";
            pwd;
            python run_tests.py;
            ;;
        "von")
            echo "Virtual Environment ON "
            virtualenv -p /usr/bin/python3 venv2
            source venv2/bin/activate
            #pip install Pillow
            ;;
        "voff")
            echo "Virtual Environment OFF "
            deactivate;
            ;;
            
        *)
            echo "---------------- Project Switcher----------------"
            echo "|   . ~/p g AI  = git status of AIKIF           |"
            echo "|   . ~/p t wo  = run tests in worldbuild       |"
            echo "|   . ~/p j vi  = cd to virtual_AI_simulator    |"
            echo "|   . ~/p j dot = cd to ~/dev/dotfiles (master) |"
            echo "|   . ~/p von   = activate virtualenv for cwd   |"
            echo "|   . ~/p voff  = deactivate virtualenv in cwd  |"
            echo "-------------------------------------------------"
            ;;
        esac
        break
    fi
done;

