#!/usr/bin/env bash

read -n1 -p "Proceed [y/n]? " answer

case $answer in
    Y | y) echo "ok then.";;
    N | n) echo "see you later!"
           exit;;
esac

echo "This is the end of the script."
