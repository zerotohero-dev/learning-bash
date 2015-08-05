#!/usr/bin/env bash

function db1 {
    read -p "Enter a value: " value

    echo "hello world!"
    echo $[ $value * 2 ]
}

result=$(db1)

echo "The new value is $result."