#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/6/2023
# Last Modified: 5/6/2023

# Description:
# Obtain header infomation from a list of websites in url.text and store these headers in individual files"

# Usage:
# header_info_project.sh

readarray -t headers < urls.txt


for header in "{$headers[@]}"; do
    h=$(curl --head "$PWD/urls.txt")
    touch "$PWD/headers/$header"

    echo "$header was create"
done
