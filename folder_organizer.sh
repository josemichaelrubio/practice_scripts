#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/7/2023
# Last Modified: 5/7/2023

# Description:
# 2nd script building assignment project. Oragnize files within a folder into subfolders based on file type

# Usage:
# folder_organizer.sh


read -p "Which folder do you want to organise?: " folder

while read filename; do
    case "$filename" in
        *.jpg|*.jpeg|*.png)
            subfolder="images" ;;
        *.doc|*.docx|*.txt|*.pdf)
            subfolder="documents" ;;
        *.xls|*.xlsx|*.csv)
            subfolder="spreadsheets" ;;
        *.sh)
            subfolder="scripts" ;;
        *.zip|*.tar|*.tar.gz|*.tar.gz.bz2)
            subfolder="archives" ;;
        *.ppt|*.pptx)
            subfolder="presentations" ;;
        *.mp3)
            subfolder="audio" ;;
        *.mp4)
            subfolder="video" ;;
        *)
            subfolder="." ;;
    esac

    if [ ! -d "$folder/$subfolder" ]; then
       mkdir "$folder/$subfolder"
    fi

    mv "$filename" "$folder/$subfolder"
done < <(ls "$folder")


