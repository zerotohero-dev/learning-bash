#!/usr/bin/env bash

count=1

while [ -n "$1" ]; do
    echo "Parameter $count is '$1'"

    count=$[ $count + 1 ]
    shift
done

# this is a test comment too.