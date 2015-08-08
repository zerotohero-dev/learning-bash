#!/usr/bin/env bash

COMMAND1="ps -u $USER_ACCOUNT --no-heading"
COMMAND2="gawk '{print $1}'"
COMMAND3="xargs -d '\\n' /usr/bin/sudo /bin/kill -9"

$COMMAND1 | $COMMAND2 | $COMMAND3