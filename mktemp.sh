#!/usr/bin/env bash

tempfile=$(mktemp test20.XXXXXX)

exec 3> $tempfile

echo "hello world" >&3

exec 3>&-

cat $tempfile

rm -f $tempfile 2> /dev/null