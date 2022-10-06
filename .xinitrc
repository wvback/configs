#!/bin/bash -xe

export _JAVA_AWT_WM_NONREPARENTING=1

setxkbmap -layout se -variant nodeadkeys

xrdb ~/.Xresources

xset r rate 300 20
xset b off
xset s noblank

xrandr --auto &

xsettingsd &
numlockx &
dwmblocks &

exec dwm 2>/tmp/dwm-$!.log
