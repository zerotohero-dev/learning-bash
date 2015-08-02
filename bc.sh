#!/bin/bash
var1=$(echo "scale=4; 3.44 / 5" | bc)

var2=50
var3=122

inline=$(bc << EOF
scale=4
a1 = $var2 * $var4
EOF
)

result=$(echo "scale=4; $var2 / $var3" | bc)

echo $inline
echo $result
echo $var1
