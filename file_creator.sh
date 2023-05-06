#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/6/2023
# Last Modified: 5/6/2023

# Description:
# learning how to use a for loop to iterate for an array. Create files from a text file.

# Usage:
# file_creator.sh

readarray -t files < file1.txt

for file in "${files[@]}"; do
    if [ -f "$PWD/for-loop-file-creator/$file" ]; then
        echo "$file already exists"
    else
        touch "$PWD/for-loop-file-creator/$file"
        echo "$file was created"
    fi
done