#!/usr/bin/env bash

IFS_OLD=$IFS
IFS=$'\n'
for entry in $(cat /etc/passwd); do
    echo 'here is the entry:'
    echo 'entry>> $entry'
    IFS=:
    for value in $entry; do
        echo $value
    done
done
IFS=$IFS_OLD
