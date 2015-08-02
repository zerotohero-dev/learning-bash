#!/bin/bash
outline=23
inline=$(bc << EOF
scale=4
a1 = 44 / $outline
a1
EOF
)

echo $inline

