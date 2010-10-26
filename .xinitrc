#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# Daemons
thunar --daemon &
strigidaemon &

# Compositing
xcompmgr &
#cairo-compmgr &

# Configurations
numlockx &
xsetroot -cursor_name left_ptr &
sh .fehbg &

# Startup apps
trayer --edge top --align right --width 15 --height 10 --transparent true --alpha 100 --tint 0 &
#wicd-client &
glista &
pyvolwheel &
adeskmenu &
klipper &

exec ck-launch-session xmonad
