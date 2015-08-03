#/usr/bin/env bash

for (( a = 1; a < 4; a++ )); do
    for (( b = 1; b < 10; b++ )); do
        if [ b -gt 4 ]; then
            break 2
        fi
    done
done
