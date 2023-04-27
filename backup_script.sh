#!/opt/homebrew/bin/bash

# Author: JMR
# Date Created: 20230413
# Last Modified: 20230413

# Description
# Creates a backup in ~/programs/bash-course folder of all files in the home directory

# Usage
# backup_script

tar -cvf ~/programs/bash-course/my_backup_"$(date +%d-m%-%Y_%H-%M-%S)".tar ~/* 2>/dev/null

exit 0