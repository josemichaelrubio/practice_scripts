#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/5/2024
# Last Modified: 5/5/2024

# Description:
# Studying combinding conditions for tests. Removing duplicate files

# Usage:
# if_combine.sh

a=$(cat file1.txt)
b=$(cat file2.txt)
c=$(cat file3.txt)
if [ $a = $b ] || [ $a = $c ]; then
    rm file2.txt file3.txt
else
    echo "files do not match"
fi

