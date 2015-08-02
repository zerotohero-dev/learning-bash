#!/usr/bin/env bash

case $USER in
rich | barbara)
    echo "Welcome $USER";;
testing)
    echo "Hello.";;
jessica)
    echo "Do not forget to logout when you are done.";;
*)
    echo "Sorry, you're not allowed here.";;
esac
