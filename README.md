#Duncans dotfiles
dotfiles and scripts for new linux install

##Quickstart
####Step 1 - Run install.sh for first time
makes a backup folder /dev/dotfiles_old
copies managed dotfiles to backup folder
installs standard packages I use

####Step 2 - modify scripts and dotfiles
Always modify files in /dev/dotfiles NOT in home

Use git to manage versions

####Step 3 - deploy latest scripts to home
run install.sh again to deploy managed scripts back to home


##Scripts 

|Filename | description |
 --- | ---      
|p | Script to be used for quick jumping around to project folders|
|g | aliased commands for git|
|install.sh		  | backs up existing files, then deploys from dotfiles folder|

# https://github.com/acutesoftware/dotfiles.git

