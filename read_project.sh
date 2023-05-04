#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/4/2023
# Last Modified: 5/4/2023

# Description:
# A Switchboard thaqt collects everyone's current extention numbers and pin code.
## write it to a .csv file

# Usage:
# read_project.sh

read -p "What is your first name?: " firstname
read -p "What is your surname/family name?: " lastname
read -s -N 4 -p "What is your extension number? (must be four digits): " ext
echo
read -s -N 4 -p "What access code would you like to use when dialing in?: " access
echo

echo "$firstname,$lastname,$ext,$access" >> "$PWD/outputs/extentions.csv"