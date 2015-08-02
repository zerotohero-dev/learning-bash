#!/usr/bin/env bash

var1="Hello"
var2="World"

if [ $var1 \> $var2 ]; then
    echo 'Bigger'
else
    echo 'Less'
fi
