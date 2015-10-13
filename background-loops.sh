#!/usr/bin/env bash

for i in [1..10]; do
    echo -n "$i "
done & # run loop in background.

for i in [11..20]; do
    echo -n "$i "
done

# the ordering might differ because one loop is sent to background.

echo # this echo sometimes will not display
