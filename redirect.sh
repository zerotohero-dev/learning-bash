#!/usr/bin/env bash

for file in /home/ubuntu; do
    if [ -f $file ]; then
        echo "$file is a file."
    fi
done >> output.txt

for state in "North Dakota" Illinois Alabama "California"; do
    echo "$state is a great place to go!"
done | sort
