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

# Setup files needed to provide SSL for domains ( www.lifepim.com )
# NOTE - dont run this locally, run this in a BASH shell on pythonanywhere
git config --global core.autocrlf false
git clone https://github.com/lukas2511/dehydrated.git ~/dehydrated
mkdir -p ~/letsencrypt/wellknown
cd ~/letsencrypt

# STOP - manually setup mappings on pythonanywhere.com
#  You'll also need your pythonanywhere site to be able to serve static files from your wellknown directory. 
# Head over to web app tab and set up a new mapping:
#  Static URL: /.well-known/acme-challenge
#  Static Path: /home/acutesoftware/letsencrypt/wellknown

vim /home/acutesoftware/letsencrypt/config
:i WELLKNOWN=/home/acutesoftware/letsencrypt/wellknown

~/dehydrated/dehydrated --config ~/letsencrypt/config --cron --domain www.lifepim.com --out ~/letsencrypt --challenge http-01

# then email support to get the certificate installed

# DONE

# Every 3 months - you need to renew the certificate as follows
cd ~/letsencrypt
~/dehydrated/dehydrated --cron --domain www.yourdomain.com --out . --challenge http-01



