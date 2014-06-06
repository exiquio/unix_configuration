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
#trayer &
#wicd-client & 
#glista &
#volumeicon &
#adeskmenu &

exec xmonad
