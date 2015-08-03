#!/usr/bin/env bash

factorial=1

for (( number = 1; number <= $1; number++ )); do
    factorial=$[ $factorial * $number ]
done

echo The factorial of $1 is $factorial.

# this is a comment. -- testing my color scheme; nothing particular. wrapping lines to print margin...
