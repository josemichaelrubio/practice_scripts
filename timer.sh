#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/6/2023
# Last Modified: 5/6/2023

# Description:
# a timer that counts down from the input provided by the user 

# Usage:
# timer.sh

total_seconds=""

while getopts "m:s:" opt; do
    case "$opt" in 
        m) total_seconds=$(($total_seconds + $OPTARG * 60));;
        s) total_seconds=$(($total_seconds + $OPTARG));;
    esac
done 

while [ $total_seconds -gt 0 ]; do
     echo "$total_seconds"
     total_seconds=$(($total_seconds - 1))
    sleep 1
done

echo "Time's up"


