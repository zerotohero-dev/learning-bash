#!/usr/bin/env bash

function build {
    local original
    local new
    local elements
    local i

    original=($(echo $@))
    new=($(echo $@))
    elements=$[ $# - 1 ]

    for (( i = 0; i <= $elements; i++ )) {
        new[$i]=$[ ${original[$i]} * 2 ]
    }

    echo ${mew[*]}
}

my_array=(1 2 3 4 5)

echo "The original array is: '${my_array[*]}'."

arg1=$(echo ${my_array[*]})
result=($(build $arg1))

echo "The new array is: '${result[*]}'."