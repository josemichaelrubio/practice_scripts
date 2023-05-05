#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/5/2023
# Last Modified: 5/5/2023

# Description:
# studying while loops. prints the user's value -1 until it hit 10

# Usage:
# while.sh

read -p "enter your number: " num

while [ $num -gt 10 ]; do
    echo $num
    num=$(($num - 1))
done



