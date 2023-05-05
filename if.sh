#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/5/2024
# Last Modified: 5/5/2024

# Description:
# Studying if statements on bash 

# Usage:
# if.sh

#
# If statement
if [ 2 -gt 1 ]; then
    echo test passed
fi

# else
if [ 2 -eq 1 ]; then
    echo test passed
else
    echo test failed
fi

# elif
if [ 2 -eq 1 ]; then
    echo test passed
elif [ 1 -eq 1 ]; then
    echo Second test passed
else
    echo test failed
fi