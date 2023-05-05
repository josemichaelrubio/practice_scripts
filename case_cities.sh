#!/opt/homebrew/bin/bash

# Author: Jose Michael Rubio
# Date Created: 
# Last Modified: 

# Description:
# Provides users with a list of possibile cities based on the city they select and advise them what city is in

# Usage:
# case_cities.sh

PS3="Select a city, will provide which country it is located: "
select cities in Tokyo London "Los Angeles" "New York";
    do
    case "$cities" in
        Tokyo)
            country="Japan" ;; 
        London) 
            country="England" ;;
        "Los Angeles"|"New York")
            country="USA" ;;
    esac
    echo "$cities is in $country"
    break
    done






