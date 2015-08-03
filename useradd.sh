#!/usr/bin/env bash

input='users.csv'

while IFS=','; read -r userId, name; do
    echo "Adding $userId"
    useradd -c "$name" -m $userId
done < $input