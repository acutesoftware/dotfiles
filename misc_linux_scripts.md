
### Disk 

Get the total disk space left and summary of folder usage

    df -h .; du -sh -- * | sort -hr

Count files in folder and sub folders

    find . -type f | wc -l
