#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 >>/tmp/polybar1.log 2>&1 & disow
polybar bar2 >>/tmp/polybar1.log 2>&1 & disow
polybar bar3 >>/tmp/polybar1.log 2>&1 & disow
polybar bar4 >>/tmp/polybar1.log 2>&1 & disow
polybar bar5 >>/tmp/polybar1.log 2>&1 & disow
polybar bar6 >>/tmp/polybar1.log 2>&1 & disow

rm /tmp/polybar1.log /tmp/polybar2.log


LOG=/tmp/polybar1.log 
if test -f "$LOG"; then
    echo "$LOG is removed."
fi

LOG1=/tmp/polybar2.log 
if test -f "$LOG1"; then
    echo "$LOG1 is removed."
fi

