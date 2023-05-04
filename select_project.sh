#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/4/2023
# Last Modified: 5/4/2023

# Description:
# Modify the read_project.sh switchboard, add select command to provide the user with
## ether handheld or headset phone

# Usage:
# select_project.sh

read -p "What is your first name?: " firstname
read -p "What is your surname/family name?: " lastname

PS3="What type of phone would you like to use? "
select phone in headset handheld;
do
echo "You have select $phone"
break
done

PS3="What department are you in? "
select department in finance sales "customer service" engineering
do
echo "You're in $department"
break
done

read -s -N 4 -p "What is your extension number? (must be four digits): " ext
echo
read -s -N 4 -p "What access code would you like to use when dialing in?: " access
echo

echo "$firstname,$lastname,$phone,$department,$ext,$access" >> "/Users/josemichaelrubio/programs/bash-course/outputs/extentions.csv"
