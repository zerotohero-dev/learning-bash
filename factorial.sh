#!/usr/bin/env bash

#function factorial {
##    if [ $1 -eq 1 ]; then
##        echo 1
##    else
##        local temp=$[ $1 - 1 ]
##        local result='factorial $temp'
##        echo $[ $result * $1 ]
##    fi
#}

function factorial {
    if [ $1 -eq 1 ]; then
       echo 1

    else
        local temp=$[ $1 - 1 ]
        local result=$(factorial $temp) # or `factorial $temp` -- both are command substitutions
        echo $[ $result * $1 ]
    fi
 }

echo $(factorial 20)