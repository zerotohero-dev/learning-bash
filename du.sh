#/usr/bin/env bash

CHECK_DIRECTORIES="/var/log /home"
DATE=$(date '+%m%d%y')

exec > big_users.rpt # redirect stdout

for DIR in $CHECK_DIRECTORIES; do
    du -S $DIR 2>/dev/null |
    sort -rn |
    sed '{11,$D; =}' |
    sed 'N; s/\n/ /' |
    gawk '{printf $1 ":" "\t" $2 "\t" $3 "\n"}'
done
