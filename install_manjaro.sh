#!/bin/bash
########################################################
# install_manjaro.sh
# Script to run on new Linux install
########################################################

# Add NAS Mount points

cd ~
fstab_file="/home/duncan/fstab_nas2"

printf '\n# NAS mappings\n' > "$fstab_file"
printf '//192.168.1.135/music			  /home/duncan/Documents/nas/music		    cifs vers=3.0,uid=duncan,credentials=/home/duncan/Documents/.nascredentials,file_mode=0600,dir_mode=0700,noauto,user\n' >> "$fstab_file"
printf '//192.168.1.135/photo			  /home/duncan/Documents/nas/photo		    cifs vers=3.0,uid=duncan,credentials=/home/duncan/Documents/.nascredentials,file_mode=0600,dir_mode=0700,noauto,user\n' >> "$fstab_file"
printf '//192.168.1.135/user			  /home/duncan/Documents/nas/user		    cifs vers=3.0,uid=duncan,credentials=/home/duncan/Documents/.nascredentials,file_mode=0600,dir_mode=0700,noauto,user\n' >> "$fstab_file"

echo $fstab_file ' file created:'
cat $fstab_file
read -rsp $'Append the new fstab entries to /etc/fstab. Press enter once done...\n'

# Setup shortcuts to NAS from standard local libraries
cd /home/duncan/Music/
ln -s /home/duncan/Documents/nas/music music_nas

cd /home/duncan/Pictures/
ln -s /home/duncan/Documents/nas/photo photo_nas

cd /home/duncan/Desktop/
ln -s /home/duncan/Documents/nas/user user_nas

cd /home/duncan/Documents/
ln -s /home/duncan/Documents/nas/user/duncan/C/user docs_nas

