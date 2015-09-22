#!/bin/bash
########################################################
# p
# Project script to handle moving to folders and setting
# up new git projects
########################################################

py_projects="python/AIKIF python/ext-dl python/filelist python/gfx python/lifepim python/LifePIM_public python/rawdata python/tax python/virtual_AI_simulator python/worldbuild"
web_projects=" html/web2015"
dot_projects=" /../../../dotfiles"
projects=$py_projects$web_projects$dot_projects
echo "------------- Project Switcher----------"
echo "|   . ~/p g AI  = AIKIF                |"
echo "|   . ~/p g wo  = worldbuild           |"
echo "|   . ~/p g vi  = virtual_AI_simulator |"
echo "----------------------------------------"

cmd=$1
prj=$2
newfolder=""
for proj in $projects;
do
	#echo "cmd = $cmd, prj = $prj, proj = $proj";
	if [[ $proj == *$prj* ]]
	then
		newfolder="/home/duncan/dev/src/"$proj;
		echo "$newfolder";
		cd $newfolder;
	    ls -lart
	    break
	fi
done;

