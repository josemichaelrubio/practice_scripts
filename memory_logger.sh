#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/5/2023
# Last Modified: 5/5/2023

# Description:
# Log memory ussage in a specific location.

# Usage:
# memory_logger.sh

folder=$HOME/performance

if [ -d $folder ]; then
    echo "Performance directory exists"
else  
    mkdir $folder
    echo "$folder folder has been created"
fi

# free >> $folder/memory.log # Free command is for windows. 
vm_stat >> $folder/memory.log since I have a mac, i have to use vm_stat
echo "Memory log saved in $folder/memory.log"
cat $folder/memory.log
