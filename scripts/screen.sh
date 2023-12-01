#!/bin/bash

# Check if HDMI is connected
if xrandr | grep "HDMI" | grep " connected" >/dev/null; then
    echo "HDMI screen is connected."

    # Set the resolution to a specific value
    xrandr --output eDP-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1 --off --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rate 74.99 --rotate normal --output HDMI-2 --off

    # Add your desired actions here
    # ...

else
    echo "HDMI screen is not connected."
    # Add alternative actions here if HDMI is not connected
    xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output HDMI-2 --off
fi
