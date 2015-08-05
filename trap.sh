#!/usr/bin/env bash

trap "echo trapped CTRC-C" SIGINT
trap "echo Goodbye" EXIT

echo "this is a test script"

count=1
while [ $count -le 10 ]; do
    echo $count
    sleep 1
    count=$[ $count + 1 ]
done

trap -- SIGINT # return to the normal behavior.

echo "This is the end of script"
