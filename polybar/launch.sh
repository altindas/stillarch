#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar example & 
ln -s /tmp/polybar_mqueue.$! /tmp/polybar_mqueue.1 &
polybar example1 &
ln -s /tmp/polybar_mqueue.$! /tmp/polybar_mqueue.2 &
polybar gizli &
ln -s /tmp/polybar_mqueue.$! /tmp/polybar_mqueue.3 &

echo "Polybar launched..."
