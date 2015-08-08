#!/usr/bin/env bash

DATE=$(date +%y%m%d)

FILE=archive$DATE.tar.gz

CONFIG_FILE=/archive/files-to-backup
DESTINATION=/archive/$FILE

if [ -f $CONFIG_FILE ]; then
    echo ''
else
    echo 'Config file does not exist.'
fi

FILE_NO=1

exec < $CONFIG_FILE # redirect stdin.

read FILE_NAME

while [ $? -eq 0 ]; do
    if [ -f $FILE_NAME -o -d $FILE_NAME ]; then
        FILE_LIST=$FILE_LIST $FILE_NAME
    fi

    FILE_NO=$[ $FILE_NO + 1 ]
done

tar -czf $DESTINATION $FILE_LIST 2> /dev/null