#!/bin/bash
########################################################
# test_acute_linux.sh
# script to test acute packages on new 
# linux install.
#
# cd to a projects test folder
#     cd ~/dev/src/python/AIKIF/tests
# turn on virtual environments
#     . ~/p von
# run this script
#     ~/test_acute_linux.sh
########################################################

# Now run all tests

echo "Testing acute packages" > res_acute_install.txt;

. ~/p t wo &>> ~/res_acute_install.txt;
. ~/p t ra &>> ~/res_acute_install.txt;
. ~/p t AI &>> ~/res_acute_install.txt;
. ~/p t vi &>> ~/res_acute_install.txt;

