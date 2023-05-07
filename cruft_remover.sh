#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/7/2023
# Last Modified: 5/7/2023

# Description:
# First script building assignment. Deletes cruft, files that haven't been modified for a certain period of time

# Usage:
# cruft_remover.sh

#ask the user which folder they want to remove cruft from
#ask user to define how many days files should be unmodified to be consider cruft
echo "Hello! Welcome to cruft remover!"
echo "Cruft are unnecessary files that have not been modified in some time"

read -p "Which folder do you want to remove cruft from? (path please!) " folder
read -p "How many days would you consider an unmodified file cruft? " days

# create an array of files eligble for removal

find $folder -mtime -$days
readarray -t files < <(find $folder -mtime -$days)

# iterate over the array and present the user with an option to delete each file in the array
for file in "${files[@]}"; do
    PS3="Would you like to keep or delete $file?"
    select opt in keep delete;
        do
            if [ $opt = "keep" ]; then
                echo "$file kept."
            else
                rm $file
                echo "$file was deleted."
            fi
        break
    done
done 


