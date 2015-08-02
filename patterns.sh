#!/usr/bin/env bash

if [[ $USER == u* ]]; then
    echo "Hello $USER"
else
    echo "Sorry, I don't know you."
fi