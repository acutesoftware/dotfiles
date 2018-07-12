
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
     > Description:	    Ubuntu 16.04.4 LTS
     > Release:	        16.04
     > Codename:	    xenial
 
 What flavour of Ubuntu are you running (see https://itsfoss.com/which-ubuntu-install/ )
 
     cat /var/log/installer/media-info
     > Unity
   
How long has the PC been running
     
     uptime
     >  23:09:26 up 61 days,  8:28,  1 user,  load average: 0.82, 0.48, 0.34


Count files in folder and sub folders

    find . -type f | wc -l


### Files and Folders

Get a tree view of subfolders 

    ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'

Find the most recently used files including all subdirectories

    find . -type f -mtime -7 -print0 | xargs -0 ls -lt | head
  
Find string in all files (example searchs logs for Exception)

    find /var/log/www.lifepim.com -type f -print0 2>/dev/null | xargs -0 grep --color=AUTO -Hn 'Except' 2>/dev/null

Find a string 'blah' in all files with recursive (deep) search from current folder '.'

    grep -Rnw '.' -e 'blah'

Limit above search to only .html files

    grep -Rn --include=*.html '.' -e 'blah'
    
    
    

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

Lookup name of IP Address

    nslookup 162.213.1.246
    > Non-authoritative answer:
    > 246.1.213.162.in-addr.arpa      name = wssa.beyondsecurity.com.
  
Get the IP address of a domain name

     host www.acutesoftware.com.au
    > acutesoftware.com.au has address 129.121.30.188
  
  
 Show the routing table

    route 


Port scanning

    nmap

 
 ### Shell tips
 
 Show top commands from your shell history 
 
     history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
          35 cat
          25 awk
          18 pwd
          15 ls
          14 cd
     
     
  

### Data Collection

Download a file

    wget http://www.acutesoftware.com.au/aikif/AIKIF-Overview.jpg
    

Download a site for offline reading

    wget --recursive  --page-requisites http://www.acutesoftware.com.au/cont_articles.html


### Data extraction

Get a list of URLs from a html file (like an exported list of Chrome bookmarks)

    grep -Eoi '<a [^>]+>' source.html | grep -Eo 'HREF="[^\"]+"' | grep -Eo '(http|https)://[^/"]+' > urls.csv
    
Grep log files

    cat /var/log/www.lifepim.com.access.log  | grep "POST"          # number of posts to lifepim
    cat /var/log/www.lifepim.com.access.log  | grep "login" | wc -l # number of login page accesses
    awk '{print $1}' /var/log/www.lifepim.com.access.log | sort | uniq -c   # count per IP address
    awk '{print $7}' /var/log/www.lifepim.com.access.log | uniq  # list of pages accessed
    
    cat /var/log/www.lifepim.com.error.log | grep "Exception" | uniq      # list of exceptions
    
### Date and Time

Display Annual Calendar for current year
   
    cal -y 
   
   
Show the current date in ISO format ( yyyy-mm-dd )
  
    echo $(date -I)
    
Store the current date / time as string in a bash variable

    DATE=`date '+%Y-%m-%d %H:%M:%S'`
    echo $DATE
    
   
### SQL tips

Show table size of selected tables in a schema

    SELECT table_name as 'Database Name', 
    sum( data_length + index_length ) as 'Size in Bytes', 
    round((sum(data_length + index_length) / 1024 / 1024), 4) as 'Size in MB' 
    FROM information_schema.TABLES where table_name like 'as_%' or table_name like 'sys_%' 
    GROUP BY table_name; 

Get a list of column names for a table 

    select * from information_schema.columns where table_name = 'as_task';

Show usage in log file grouped by date

    select DATE_FORMAT(log_date, '%Y-%m'), count(*) from sys_log group by DATE_FORMAT(log_date, '%Y-%m') order by 1;
