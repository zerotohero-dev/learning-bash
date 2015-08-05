#!/usr/bin/env bash

function func1 {
    local temp=$[ $value + 5 ]
    result=$[ $temp * 2 ]
}

temp=4
value=6

func1

echo $temp
echo $value
echo $result