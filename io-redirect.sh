#!/usr/bin/env bash

FILE=/etc/fstab

{
    read line1
    read line2
} < $FILE

echo $line1
echo $line2

exit 0
