#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/7/2023
# Last Modified: 5/7/2023

# Description:
# 3rd script of script building assignment project brief. An interactive menu that your user can use to select
## which utlity they want to use: cruft_remover.sh or folder_organizer.sh

# Usage:
# toolkit.sh


## menu for user where they can select which two scripts to run
echo ""
echo "Welcome to the ultity menu!"
PS3="Select the ultlity you want to use."
select ult in "cruft_remover.sh" "folder_organizer.sh" ;
do
    case "$ult" in
        "cruft_remover.sh") cruft_remover.sh ;;
        "folder_organizer.sh") folder_organizer.sh ;;
        *) echo "You did not select a ultility to run" ;;
    esac

break
done

