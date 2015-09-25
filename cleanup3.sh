#/usr/bin/env bash

LOG_DIR=/var/log
ROOT_UID=0
LINES=50
E_XCD=86
E_NOTROOT=87
E_WRONGARGS=85

if [[ "${UID}" != "${ROOT_UID}" ]]; then
    echo "Must be root to run the script."
    exit ${E_NOTROOT}
fi

# if [[ -n "$1" ]]; then
#    lines=$1
# else
#    lines=$LINES
# fi

case "$1" in
    ""      ) lines=${LINES};;
    *[!0-9]*) echo "Usage `basename $0` lines-to-cleanup";;
    *       ) lines=$1;;
esac

cd "${LOG_DIR}"

if [[ `pwd` != "${LOG_DIR}" ]]; then
    echo "Can't change to '${LOG_DIR}'."

    exit ${E_XCD}
fi

# cd /var/log || {
#     echo "Cannot change to '${LOG_DIR}'." >&2
#   exit ${E_XCD}
# }

tail -n ${lines} messages > mesg.tmp
mv mesg.tmp messages

cat /cev/null > wtmp

echo "Log files cleaned up!"

exit 0
