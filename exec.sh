#!/usr/bin/env bash

exec 1> testout
exec 2> testerr
exec 0< testfile

echo "This is is a test redirection."
