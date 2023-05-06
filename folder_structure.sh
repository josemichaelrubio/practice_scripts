#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/6/2023
# Last Modified: 5/6/2023

# Description:
# Sets up folder structure for a shared network drive. The structure is given in folders_to_create.txt

# Usage:
# folder_structure.sh

while read folder; do
    mkdir "$PWD/read-while_loops_project/$folder"
    echo "$folder created in $PWD/read-while_loops_project"
done < "$1"