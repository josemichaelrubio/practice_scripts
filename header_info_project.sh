#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/6/2023
# Last Modified: 5/6/2023

# Description:
# Obtain header infomation from a list of websites in url.text and store these headers in individual files"

# Usage:
# header_info_project.sh

readarray -t urls < urls.txt

for url in "${urls[@]}"; do
    webname=$(echo $url | cut -d "." -f 2)
    curl --head "$url" > "headers/$webname".txt
done
