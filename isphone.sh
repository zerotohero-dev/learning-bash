#/usr/bin/env bash

# foo=echo date | $(date)
# echo $foo

echo $1 | gawk --re-interval '/^\(?[2-9][0-9]{2}\)?( |-|\.)[0-9]{3}( |-|\.)[0-9]{4}/{print $0}'