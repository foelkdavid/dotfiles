#!/bin/sh
MEMTOTAL=$(free -m | head -n 2 | tail -n 1 | awk '{print $2}')
MEMUSED=$(free -m | head -n 2 | tail -n 1 | awk '{print $3}')
USAGE=$( echo $MEMTOTAL $MEMUSED | awk '{div=(100/$1)*$2; printf"%0.f\n", div }' )

echo  $USAGE%
