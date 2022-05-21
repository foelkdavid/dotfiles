#!/bin/bash
status=$(bluetoothctl show | grep Powered: | awk '{print $2}')

if [ "$status" == "yes" ]
then
    echo ""
elif [ "$status" == "no" ]
then
    echo ""
else
    echo "bt-error"
fi


