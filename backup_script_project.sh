#!/opt/homebrew/bin/bash

# Author: JMR
# Date Created: 20230413
# Last Modified: 20230426

# Description
# Creates a backup of home directory in user's current directory

# Usage
# backup_script_project

currentDir=$(pwd)

echo "Hello $USER, your backup of the home directory will be located in current directory: $currentDir "
echo "Please wait, you will recieve a message when it's complete."


#tar -cvf ~/programs/bash-course/my_backup_"$(date +%d-m%-%Y_%H-%M-%S)".tar ~/* 2>/dev/null
#tar -cvf backup"$(date +%d-m%-%Y_%H-%M-%S)".tar ${currentdir}
echo "Backup complete."
echo "Thank you!"

exit 0