#!/usr/bin/env bash

function array_test {
    local new_array
    new_array=($(echo $@))

    echo "new" ${new_array[1]}

    echo "The new array value is: '${new_array[*]}'"

    local sum=0
    for value in ${new_array[*]}; do
        echo $value
        sum=$[ $sum + $value ]
    done

    echo $sum
}

my_array=(1 2 3 4 5)

echo "The original array is: '${my_array[*]}'"

array_test ${my_array[*]}