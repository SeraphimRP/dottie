#!/bin/sh

config_name="wg0us"
config="/home/srp/.wg/$config_name.conf"

connection_status() {
    if [ -f "$config" ]; then
        connection=$(sudo wg show $config_name 2>/dev/null | head -n 1 | awk '{print $NF }')

        if [ "$connection" = "$config_name" ]; then
            echo "1"
        else
            echo "2"
        fi
    else
        echo "3"
    fi
}

case "$1" in
--toggle)
    if [ "$(connection_status)" = "1" ]; then
        sudo wg-quick down "$config" 2>/dev/null
    else
        sudo wg-quick up "$config" 2>/dev/null
    fi
    ;;
*)
    if [ "$(connection_status)" = "1" ]; then
        echo "$config_name"
    elif [ "$(connection_status)" = "3" ]; then
        echo "Config not found!"
    else
        echo "down"
    fi
    ;;
esac

