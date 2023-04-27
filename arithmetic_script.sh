#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 4/27/2023
# Last Modified: 4/27/2023

# Description:
# Learning arithemtic expressions on bash

# Usage:
# arithmetic_script.sh

x=4
y=2
echo $(($x + $y))
echo $((x - y)) #we can also leave out the $ within the expression
echo $(($x * $y))
echo $(($x / $y))
echo $((($x+$x) *y))
echo $((($x+$x) *y**3 %2))