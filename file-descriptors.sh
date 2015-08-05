#!/usr/env/bin bash

exec 3> test13out
exec 4>> test14out

echo "test goes out there." >&3
echo "this will be apptended." >&4