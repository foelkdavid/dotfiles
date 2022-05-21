#!/bin/bash

#DEVICE=$(nmcli device | grep connected | awk '{print $1}' | head -n 1)
STATE=$(nmcli device | grep connected | awk '{print $3}' | head -n 1)
TYPE=$(nmcli device | grep connected | awk '{print $2}' | head -n 1)
CONNECTION=$(nmcli device | grep connected | awk '{print $4}' | head -n 1)


if [ $STATE == "connected" ]
then
    if [ $TYPE == "wifi" ]
    then
        echo " $CONNECTION"
    elif [ $TYPE == "ethernet" ]
    then
        echo ""
    fi
else
    echo ""
fi
