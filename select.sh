#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/4/2023
# Last Modified: 5/4/2023

# Description:
# Studying select command

# Usage:
# select.sh

PS3="What is the day of the week?"

select day in mon tue wed thu fri sat sun;
do 
echo "the day of the week is $day"
break
done
