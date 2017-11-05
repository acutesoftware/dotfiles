#!/bin/bash
########################################################
# install_acute_linux.sh
# script to install acute packages on new 
# linux install.
#
# cd to a projects test folder
#     cd ~/dev/src/python/AIKIF/tests
# turn on virtual environments
#     . ~/p von
# run this script
#     ~/install_acute_linux.sh
########################################################

#sudo apt install python3-pip;
#
#sudo pip3 install psutil --upgrade;
#sudo -H pip3 install noise;

pip3 install aikif;
pip3 install rawdata;
pip3 install worldbuild;
pip3 install vais;

# Test that it all works (Python shows python3)
# (venv2) duncan@TREEBEARD:~/dev/src/python/rawdata/tests$ python
# Python 3.5.2 (default, Sep 14 2017, 22:51:06) 
# [GCC 5.4.0 20160609] on linux
# Type "help", "copyright", "credits" or "license" for more information.
# >>> 

# Check that all modules import without errors
# >>> import aikif, rawdata, vais, worldbuild
# >>> 


