#!/usr/bin/env bash

function add {
    echo $[ $1 + $2 ]
}

function multiply {
    echo $[ $1 * $2 ]
}

function divide {
    if [ $2 -ne 0 ]; then
        echo $[ $1 / $2 ]
    else
        echo -1
    fi
}