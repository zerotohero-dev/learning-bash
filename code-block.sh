#!/usr/bin/env bash

SUCCESS=0
E_NOARGS=65

if [[ -z "$1" ]]; then
    echo "Usage: `basename $0` rpm-file"
fi

{
    echo
    echo "Archive Description:"
    rpm -qpi "$1"
    echo
    rpm -i --test "$1"

    if [[ "$?" == $SUCCESS ]]; then
        echo "'$1' can be installed."
    else
        echo "'$1' cannot be installed."
    fi

    echo
}
