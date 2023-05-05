#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/5/2023
# Last Modified: 5/5/2023

# Description:
# Studying case statements in bash. A case statements that tells the user how many digits are in a number.

# Usage:
# case_script.sh

read -p "Please enter a number: " number
case "$number" in
    [0-9]) echo "you have entered a single digit number";;
    [0-9][0-9]) echo "you have entered a two digit number";;
    [0-9][0-9][0-9]) echo  "you have entered a three digit number";;
    *) echo "You have entered a number that is more than 3 digits";;
esac



