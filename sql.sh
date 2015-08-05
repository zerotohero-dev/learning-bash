#!/usr/bin/env bash

outfile='members.sql'
IFS=','

while read lname fname address city state zip; do

    cat >> outfile << EOF

    INSERT INTO members (lname, fname, address, city, state, zip)
VALUES ('$lname', '$fname', '$address', '$city', '$state', '$zip');
EOF

done < ${1}
