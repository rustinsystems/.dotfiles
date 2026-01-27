#!/bin/bash

PRIMARY="eDP-1"
HDMI="HDMI-1"
RESOLUTION="1366x768"

# Check if HDMI is connected
if xrandr | grep "$HDMI connected"; then
    # Force resolution settings and mirroring
    xrandr --output $PRIMARY --primary --mode $RESOLUTION --pos 0x0 \
           --output $HDMI --mode $RESOLUTION --same-as $PRIMARY
else
    # Fallback to laptop display only
    xrandr --output $PRIMARY --auto --output $HDMI --off
fi