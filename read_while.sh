#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/6/2023
# Last Modified: 5/6/2023

# Description:
# studying read-while loops. Echo the contents of a file on the shell

# Usage:
# read_while.sh

while read line; do 
    echo "$line"
#done < <(ls $HOME)
done < "$1"