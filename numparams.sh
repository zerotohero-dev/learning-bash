#!/usr/bin/env bash

if [ $# -ne 2 ]; then
    echo Call with two parameters please.
else
    echo Correct call.
fi

echo Last parameter is ${!#}
