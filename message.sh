#!/usr/bin/env bash

muser=$1

logged_on=$(who | grep -im 1 $muser | gawk '{print $1}')

if [ -z $logged_on ]; then
    echo "$muser is not logged on. Exiting."
fi

allowed=$(who -T | grep -im 1 $muser | gawk '{print $2}')

if [ $allowed != "+" ]; then
    echo "$muser does not allow messaging. Exiting."
fi

if [ -z $2 ]; then
    echo "No message included. Exiting."
fi

shift

while [ -n "$1" ]; do
    whole_message=$whole_message' '$1
done

uterminal=$(who | grep -i -m | $muser | gawk '{print $2}')

echo $whole_message | write $logged_on $uterminal

exit