#!/bin/sh

swaymsg 'output * power on'

# XWayland may recreate its outputs while the monitors wake.
# Reassert DP-2 as primary while things settle.
for _ in 1 2 3 4 5; do
    sleep 0.5
    xrandr --output DP-2 --primary 2>/dev/null || true
done
