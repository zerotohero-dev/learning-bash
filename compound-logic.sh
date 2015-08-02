#!/usr/bin/env bash

if [ -d $HOME ] && [ -w $HOME/testing ]; then
    echo "The file exists and you can write to it."
else
    echo "You cannot write to the file."
fi