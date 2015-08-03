#!/usr/bin/env bash

count=1

for param in "$*"; do
    echo "\$* parameter #$count = $param"
    count=$[ $count + 1 ]
done

echo '------'

count=1

for param in "$@"; do
    echo "\$@ parameter #$count = $param"
    count=$[ $count + 1 ]
done
