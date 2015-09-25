#/usr/bin/env bash

for file in /{,usr/}bin/*calc; do
    if [[ -x "${file}" ]] then
        echo ${file}
    fi
done
