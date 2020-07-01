#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    polybar-msg -p 2 cmd show & polybar-msg -p 3 cmd show & echo " "
elif [ "$player_status" = "Paused" ]; then
    polybar-msg -p 2 cmd show & polybar-msg -p 3 cmd show & echo " "
else
    polybar-msg -p 2 cmd hide & polybar-msg -p 3 cmd hide & echo " "
fi
