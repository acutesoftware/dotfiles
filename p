#!/bin/bash
########################################################
# p
# Project script to handle moving to folders and setting
# up new git projects
########################################################

py_projects="python/AIKIF python/ext-dl python/filelist python/gfx python/lifepim python/LifePIM_public python/rawdata python/tax python/virtual_AI_simulator python/worldbuild"
web_projects=" html/web2015"
dot_projects=" ../dotfiles"
projects=$py_projects$web_projects$dot_projects

cmd=$1
prj=$2
newfolder=""
for proj in $projects;
do
	#echo "cmd = $cmd, prj = $prj, proj = $proj";
	if [[ $proj == *$prj* ]]
	then
		newfolder="/home/duncan/dev/src/"$proj;
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
	    *)
			echo "---------------- Project Switcher----------------"
			echo "|   . ~/p g AI  = git status of AIKIF           |"
			echo "|   . ~/p t wo  = run tests in worldbuild       |"
			echo "|   . ~/p j vi  = cd to virtual_AI_simulator    |"
			echo "|   . ~/p j dot = cd to ~/dev/dotfiles (master) |"
			echo "-------------------------------------------------"
			;;
	    esac
	    break
	fi
done;

