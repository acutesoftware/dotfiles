
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
    

Jupyter Notebook

    python3 -m pip install --upgrade pip
    sudo python3 -m pip install jupyter

    jupyter notebook
    
    
OpenCV for Python3
    
    sudo pip3 install opencv-python
    
        Collecting opencv-python
        Downloading opencv_python-3.4.0.12-cp35-cp35m-manylinux1_x86_64.whl (24.9MB)
          100% |████████████████████████████████| 24.9MB 75kB/s 
        Collecting numpy>=1.11.1 (from opencv-python)
        Downloading numpy-1.13.3-cp35-cp35m-manylinux1_x86_64.whl (16.9MB)
          100% |████████████████████████████████| 16.9MB 115kB/s 
        Installing collected packages: numpy, opencv-python
        Successfully installed numpy-1.13.3 opencv-python-3.4.0.12
    
   
tkinter

    sudo apt-get install python3-tk
    pip3 install tkcalendar
    
   

#### install java (runtime)

    sudo apt-get install default-jre


#### Database

setup postgress via

    sudo apt-get install postgresql
    sudo su - postgres
    psql
    
    
Setup mysql

    sudo apt-get install mysql-server
    sudo mysql_secure_installation utility   # if popup doesnt ask for root password
    sudo apt-get install mysql-client
    sudo apt-get install mysql-workbench
    sudo apt-get install python-mysqldb
    sudo pip3 install pymysql
 
 
#### Atom Text Editor
 
    sudo add-apt-repository ppa:webupd8team/atom
    sudo apt update; sudo apt install atom 
    atom
 
 
 #### Node.js
 
     sudo apt-get install nodejs
     sudo apt-get install npm
     sudo apt-get install build-essential
     npm ls    # list packages - currently empty
     
     sudo apt install node-less  # install lessc
     lessc build/build_standalone.less datepicker.css
 

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

### Keyboard Shortcuts
Go to Settings > Devices > Keyboard, scroll to bottom and click '+' to add shortcut

    Ctl + Alt + S = /bin/systemctl suspend
