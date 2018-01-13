
### Disk and Hardware

Hardware Summary

    sudo lshw -short
    
Get the total disk space left and summary of folder usage

    df -h .; du -sh -- * | sort -hr
    
Simple partition summary

    lsblk


What version of Linux are you running

    uname -a
    > Linux TREEBEARD 4.4.0-98-generic #121-Ubuntu SMP Tue Oct 10 14:24:03 UTC 2017 
      x86_64 x86_64 x86_64 GNU/Linux
    
    lsb_release -a
     > Distributor ID:	Ubuntu
     > Description:	    Ubuntu 16.04.3 LTS
     > Release:	        16.04
     > Codename:	    xenial
   
How long has the PC been running
     
     uptime
     >  23:09:26 up 61 days,  8:28,  1 user,  load average: 0.82, 0.48, 0.34


Count files in folder and sub folders

    find . -type f | wc -l



### Processes

List all processes

    ps -ef
   
   
Show a tree of processes

    pstree
   
   

Find the processes I am running

    ps -u duncan
    
    
Get list and PID of specific processes (eg python)    

    pgrep -a python
    
Show all processes and usage

    top
    htop   (will need to run sudo apt install htop first)
    

### Network

Get IP Address and network details

    /sbin/ifconfig



### Data extraction

Get a list of URLs from a html file (like an exported list of Chrome bookmarks)

    grep -Eoi '<a [^>]+>' source.html | grep -Eo 'HREF="[^\"]+"' | grep -Eo '(http|https)://[^/"]+' > urls.csv
    
Grep log files

    cat /var/log/www.lifepim.com.access.log  | grep "POST"          # number of posts to lifepim
    cat /var/log/www.lifepim.com.access.log  | grep "login" | wc -l # number of login page accesses
    awk '{print $1}' /var/log/www.lifepim.com.access.log | sort | uniq -c   # count per IP address
    awk '{print $7}' /var/log/www.lifepim.com.access.log | uniq  # list of pages accessed
    
    cat /var/log/www.lifepim.com.error.log | grep "Exception" | uniq      # list of exceptions
    

