#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/5/2023
# Last Modified: 5/5/2023

# Description:
# Study getopts command. A temp convert script from fahrenheit to celsius and vise versa

# Usage:
# temp_cov.sh

while getopts "f:c:" opt; do
    case "$opt" in 
        c) result=$(echo "scale=2; ($OPTARG * (9/5)) + 32" | bc);;
        f) result=$(echo "scale=2; ($OPTARG -32) * (5/9)" | bc);;
        \?) ;;
    esac
done
echo "$result"




## REMEMBER to give permissions to script then delete this comment ##