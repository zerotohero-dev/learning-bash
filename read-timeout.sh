#!/usr/bin/env bash

if read -t 10 -p "Name surname? " name surname; then
    echo "Hello $name $surname"
else
    echo "too slow!"
fi
