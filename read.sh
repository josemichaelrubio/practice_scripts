#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 5/4/2023
# Last Modified: 5/4/2023

# Description:
# Learning how to use the read command 

# Usage:
# read.sh

read -t 5 -p "input your first name: " name
read -t 5 -p "input your age: " age
read -t 5 -p "input where you are from: " town
read -t 5 -s -p "Secret word: " secret 
echo "My name is $name"
echo "I am $age years old"
echo "I am from $town"
echo "You secret word!! $secret"