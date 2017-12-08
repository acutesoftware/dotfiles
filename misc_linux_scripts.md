
### Disk 

Get the total disk space left and summary of folder usage

    df -h .; du -sh -- * | sort -hr

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
    

### Network

Get IP Address and network details

    /sbin/ifconfig



### Data extraction

Get a list of URLs from a html file (like an exported list of Chrome bookmarks)

    grep -Eoi '<a [^>]+>' source.html | grep -Eo 'HREF="[^\"]+"' | grep -Eo '(http|https)://[^/"]+' > urls.csv

