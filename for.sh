#!/usr/bin/env bash

for test in Alabama Alaska Arizona Arkansas California Colorado; do
    echo The next state is $test
done

for test in "New York" "New Mexico" "New Hampshire" Alabama; do
    echo The next stats is $test
done

list="Alabama Arkansas Colorado"
list=$list" Connecticut"

for state in $list; do
    echo "Have you ever visited $state?"
done

ifs=$IFS
IFS=$'\n'
file=states.txt
for state in $(cat $file); do
    echo "Beautiful state $state!"
done
IFS=$ifs

echo "in for..."
for file in /home/ubuntu/learning-bash/* /home/ubuntu/*; do
    if [ -d "$file" ]; then
        echo "$file is a directory."
    elif [ -f "$file" ]; then
        echo "$file is a file."
    fi
done

for (( i = 1, j = 0; i < 10; i++, j-- )); do
    echo "The next number is $i $j"
done