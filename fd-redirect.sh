#!/usr/bin/env bash

exec 3>&1
exec 1>testout
echo 'foo'
exec 1>&3
echo 'bar'