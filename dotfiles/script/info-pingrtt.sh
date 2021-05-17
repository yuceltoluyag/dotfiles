#!/bin/sh

HOST=185.199.108.153

if ! ping=$(ping -n -c 1 -W 1 $HOST); then
    echo "# ping failed"
else
    rtt=$(echo "$ping" | sed -rn 's/.*time=([0-9]{1,})\.?[0-9]{0,} ms.*/\1/p')

    if [ "$rtt" -lt 50 ]; then
        icon="󰜔"
    elif [ "$rtt" -lt 150 ]; then
        icon="󰜓"
    else
        icon="󰜒"
    fi

    echo "$rtt ms"
fi