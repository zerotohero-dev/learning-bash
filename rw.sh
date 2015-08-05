#!/usr/bin/env bash

exec 3<> testfile
read line <&3
echo "Read $line"
echo "this is a test line" >&3

exec 3>&-