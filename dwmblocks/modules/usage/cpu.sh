#!/bin/sh
CPU=$(top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}')
USAGE=$(echo $CPU | awk '{div=($1); printf"%0.f\n", div }')

echo  $USAGE%