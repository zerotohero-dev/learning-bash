#!/usr/bin/env bash

var1=100

until echo $var1; ls bazinga; [ $var1 -eq 0 ]; do
    echo $var1
    var1=$[ $var1 - 25 ]
done

