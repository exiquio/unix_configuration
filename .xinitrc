#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

thunar --daemon &
beagled &

xcompmgr &
numlockx &
xsetroot -cursor_name left_ptr &
sh .fehbg &
trayer --edge top --align right --width 15 --height 10 --transparent true --alpha 100 --tint 0 &
wicd-client &
glista &
pyvolwheel &
adeskmenu &

exec xmonad
