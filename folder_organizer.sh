#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/7/2023
# Last Modified: 5/7/2023

# Description:
# 2nd script building assignment project. Oragnize files within a folder into subfolders based on file type

# Usage:
# folder_organizer.sh


# Output of ls command to generate a list of files in the folder you are going to organize
readarray -t files < <(ls "$PWD")

# While loop that iterates over the output of ls
for file in "${files[@]}"; do
    name=$(basename "$file")
    ext="${name##*.}"

    creation=$(if [ -e "$PWD/$OPTARG" ]; then
        echo "$OPTARG directory exists"
        mv "$file" "$PWD/$OPTARG"
    else  
        mkdir "$PWD/$OPTARG"
         mv "$file" "$PWD/$OPTARG"
    fi)

# use case statement to globe the file names for their extentions and action commands based on their file extention
    case $ext in 
       .txt) $creation documents ;;

    esac
done 


# logic to move each file into its appropriate folder, create a folder if it doesn't exist


