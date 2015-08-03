#!/usr/bin/env bash

while [ -n "$1" ]; do
    case $1 in
        -a) echo "Found -a option.";;
        -b) param=$2
            echo "Found -b option with $param"i
            shift;;
        -c) echo "Found -c option.";;
        --) shift
            break;;
         *) echo "$1 is not a valid option."
done

count=1
for param in "$@"; do
    echo "Parameter $count is $param."
    count=$[ $count + 1 ]
done
