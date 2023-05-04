#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/3/2023
# Last Modified: 5/4/2023

# Description:
# Calculator that does basic arithemtic calculations (+,-). First arguement is the operatotion followed by a max of 9 numbers.
## All numbers will have the same operation performed upon it.

# Usage:
# calc_pp.sh

echo $((${2:-0} $1 ${3:-0} $1 ${4:-0} $1 ${5:-0} $1 ${6:-0} $1 ${7:-0} $1 ${8:-0} $1 ${9:-0} $1 ${10:-0} ))
exit 0

#:-0, if the positional parameter is empty, then we get a 0