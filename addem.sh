#!/usr/bin/env bash

function addem {
    if [ $# -eq 0 ] || [ $# -gt 2 ]; then
        echo -1
    elif [ $# -eq 1 ]; then
        echo $[ $1 + $1 ] # mathematical evaluation\1
    else
        echo $[ $1 + $2 ]
    fi
}

# echo $[ addem 22 22 ] # incorrect.

echo "Adding values..."
echo $(addem 10 15) # function call
echo $(addem 10)
echo $(addem 10 30 24)
