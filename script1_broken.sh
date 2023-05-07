#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/6/2023
# Last Modified: 5/6/2023

# Description:
# Use spellcheck to resolve errors on this broken script

# Usage:
# script1_broken.sh

while getopts "f:v:" param
do
  case "$param" in
    f) file="$OPTARG" ;;
    v) set -x ;;
    *);;
  esac
done

case "$file" in
  *.gz) gzip -d "$file" ;;
  *.zip) unzip "$file" ;;
  *.tar) tar xzf "$file" ;;
  *) echo "Unknown filetype" ;;
esac

if [[ "$(uname)" = "Linux" ]]
then
  echo "Using Linux"
fi
