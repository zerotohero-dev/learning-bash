#!/usr/bin/env bash

exec 3> test17file

echo "this is a test line of data" >&3

exec 3>&-

cat test17file

exec 3> test17file

echo "this will be bad" >&3