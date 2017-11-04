# Duncans dotfiles
dotfiles and scripts for new linux install

## Quickstart
#### Step 1 - Run install.sh for first time
makes a backup folder /dev/dotfiles_old
copies managed dotfiles to backup folder
installs standard packages I use

#### Step 2 - modify scripts and dotfiles
Always modify files in /dev/dotfiles NOT in home

Use git to manage versions

#### Step 3 - deploy latest scripts to home
run install.sh again to deploy managed scripts back to home


## Scripts 

|Filename | description |
 --- | ---      
|p | Script to be used for quick jumping around to project folders|
|g | aliased commands for git|
|install.sh		  | backs up existing files, then deploys from dotfiles folder|

#### install.sh
Deploys the scripts and dotfiles from the master folder ( ~/dev/dotfiles ) to home


#### p (project switcher)
simple script to allow jumping around projects and performing standard commands

Usage: 

. ~/p (cmd) (project abbrev)

Note the leading .  Examples below are

```
  . ~/p g AI  = git status of AIKIF           
  . ~/p t wo  = run tests in worldbuild       
  . ~/p j vi  = cd to virtual_AI_simulator    
  . ~/p j dot = cd to ~/dev/dotfiles (master) 
```

Current list of projects. Note you only need a couple of unique characters from the project name, and it will find the first match

```
	AIKIF
	ext-dl
	filelist
	gfx
	lifepim
	LifePIM_public
	rawdata 
	tax
	virtual_AI_simulator 
	worldbuild
```
