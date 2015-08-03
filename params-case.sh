#!/usr/bin/env bash

while [ -n "$1" ]; do
    case "$1" in
        -a) echo "Found -a.";;
        -b) echo "Found -b.";;
        -c) echo "Found -c.";;
        --) shift; break;;
         *) echo "$1 is not an option."
     esac
     shift
done

count=1

for param in $@; do
    echo "Parameter $count is $param."
    count=$[ $count + 1 ]
done
