#!/usr/bin/env bash

pwfile=/etc/shadow

if [ -f $pwfile ]; then
    if [ -r $pffile ]; then
        tail $pffile
    else
        echo "Sorry, unable to read the $pwfile file."
    fi
else
    echo "Sorry, the file $pwfile does not exist."
fi
