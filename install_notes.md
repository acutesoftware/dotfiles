
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
- Geany (text editor)
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
    pip install --upgrade pip


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
    sudo su - postgres
    psql
 
 
#### Atom Text Editor
 
    sudo add-apt-repository ppa:webupd8team/atom
    sudo apt update; sudo apt install atom 
    atom
 

#### Misc

    sudo apt-get install nmap 
    sudo apt-get install zenmap
    sudo apt install wireshark-qt
    sudo apt-get install synaptic


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
