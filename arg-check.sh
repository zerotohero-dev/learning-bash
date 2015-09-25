#/usr/bin/env bash

E_WRONG_ARGS=85

script_parameters="-a -h -m -z"

if [[ $# != ${NUMBER_OF_ARGS_EXPECTED} ]]; then
    echo "Usage: `basename $0` ${script_parameters}"

    exit ${E_WRONG_ARGS}
fi

