#!/usr/bin/env bash

. ./includes.sh

value1=10
value2=30

result1=$(add $value1 $value2)
result2=$(multiply $value1 $value2)
result3=$(divide $value2 $value1)

echo "result1 $result1"
echo "result2 $result2"
echo "result3 $result3"