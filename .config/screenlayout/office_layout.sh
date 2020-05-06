#!/bin/sh

# mode is the resolution
# position is from top and left so pos 0x0 means HDMI1 is at the top left
# Because of hidpi laptop screen we need to downscale the HDMI output
# so the position of the eDP1 needs to be 2x1080 = 2160 down.
xrandr --output HDMI-1 --mode 1920x1080 --pos 0x0 --scale 2x2 --rotate normal --output eDP-1 --primary --mode 3200x1800 --pos 0x2160 --rotate normal --scale 1x1

