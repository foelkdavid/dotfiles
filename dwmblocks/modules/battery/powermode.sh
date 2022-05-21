#!/bin/sh
GOV=$(cpupower frequency-info | grep "The governor" | awk '{print($3)}')

if [ $GOV == '"powersave"' ] 
then
	echo ""
elif [ $GOV == '"performance"' ]
then
	echo ""
else
	echo "?"
fi
