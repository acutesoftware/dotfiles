
# Notes for setting up Linux

More of a checklist really

## Core stuff

#### boot with Linux CD and install 

note the PC name

check internet connectivity


install Chrome - google.com

install vim

    sudo apt install vim



#### run updates
sudo apt-get upgrade




#### Install from Ubuntu Software panel
- FileZilla
- Midnight Commander
- Gimp
- Blender
- gedit
- VLC media player




## Development tools

#### Git
install git via 
    sudo apt-get install git-core
    
When working with windows files as well, make sure LF and CRs are ok

    git config --global core.eol lf
    git config --global core.autocrlf true



#### Python
should already be installed 2.7 and 3.5


To install pip use

    sudo apt-get install python-pip


Setup Python virtual environment

    sudo apt-get install python-virtualenv
    mkdir dev
    cd dev
    virtualenv venv
    source venv/bin/activate
    
    

#### install java (runtime)
sudo apt-get install default-jre


#### Database

setup postgress via

    sudo apt-get install postgresql
    


## Games


#### Minecraft
- go to minecraft.net and login
- download http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
- copy file to minecraft folder, chmod+x the jar file
- make link to desktop, double click it to run

#### Steam
- go to steamcommunity.com and login
- click install to download the linux steam installer
- run the installer
- select linux games and download. Get a coffee
