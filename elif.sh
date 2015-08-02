#!/usr/bin/env bash

if [ $USER = 'rich' ]; then
    echo "Welcome $USER"
elif [ $USER = 'teting' ]; then
    echo "Testing."
elif [ $USER = 'jessica' ]; then
    echo "Do not forget to logout when you're done."
else
    echo "Sorry, you're not allowed."
fi