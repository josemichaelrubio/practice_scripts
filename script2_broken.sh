#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/6/2023
# Last Modified: 5/6/2023

# Description:
# Use spellcheck to resolve errors on this broken script

# Usage:
# script2_broken.sh

if ! grep -q backup="true.*"  "$HOME/.myconfig" ; then
  echo "Backup not enabled in $HOME/.myconfig, exiting"
  exit 1
fi

tar -cf  "$1/my_backup_$(date +%d-%m-%Y_%H-%M-%S).tar" "$HOME"