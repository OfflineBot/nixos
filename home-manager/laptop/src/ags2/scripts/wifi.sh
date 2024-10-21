#!/bin/sh

wifi_stats=$(nmcli radio wifi)

if [[ $wifi_stats == "enabled" ]]; then

    connection=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d':' -f2)

    if [[ -n $connection ]]; then
        echo "$connection"
    else
        echo "None"
    fi
else
    echo "Off"
fi

