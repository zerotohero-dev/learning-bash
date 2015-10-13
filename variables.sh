#!/usr/bin/env bash

# Unlike many other programming languages, Bash does not segregate its
# variables by "type", Essentially, Bash variables are character strings, but,
# depending on context, Bash permits arithmetic operations and comparisons on
# variables. The determining factor is whether the value of a variable
# contains only digits.

let a=15+2

for x in 7 8 9 10 11; do
    echo -n "${x}"
done

echo "Enter something"
read a
echo "You've entered ${a}"

# Command substitution
a=`echo Hello!`
echo $a

# Using $() is a newer method than using backquotes
R=$(cat /etc/redhat-release)
arch=$(uname -m)

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

args=$# # number of arguments.
last_arg=${!args}
