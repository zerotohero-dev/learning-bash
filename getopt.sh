#!/usr/bin/env bash

set -- $(getopt -q ab:cd "$@")

while [ -n "$1" ]; do
    case "$1" in
        -a) echo "Found -a.";;
        -b) param=$2
            echo "Found -b with $param"
            shift;;
        -c) echo "Found -c";;
        -d) echo "Found -d";;
        --) shift
            break;;
         *) echo "$1 is not an option";;
     esac
     shift
done

count=1
for param in "$@"; do
    echo "parameter $count is '$param'."
    count=$[ $count + 1 ]
done

