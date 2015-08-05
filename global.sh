#!/usr/bin/env bash

function dbl {
    value=$[ $value * 2 ]
}

read -p "Enter a value: " value

dbl

echo "The new value is: $value."