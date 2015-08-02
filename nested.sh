#!/usr/bin/env bash

userToCheck=testuser

if grep $userToCheck /etc/passwd; then
    echo "The user $userToCheck exists in the system."
else
    echo "The user $userToCheck does not exist in the system."

    if ls -d /home/$userToCheck/; then
        echo "However $userToCheck has a home directory in the system."
    fi
fi
