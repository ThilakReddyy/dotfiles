#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
sleep 1

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar
echo "---" | tee -a /tmp/polybar1.log
polybar bar 2>&1 | tee -a /tmp/polybar1.log &

echo "Bars launched..."
