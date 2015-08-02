#!/usr/bin/env bash

days=10
guest=Katie
value1=42
value2=$value1
date=$(date)
date2=`date`
today=$(date +%y%m%d)

ls -al > log.$today

echo "Today is ${today}."
echo "$guest checked in $days ago."
echo "$value2 a$date b$date2"
