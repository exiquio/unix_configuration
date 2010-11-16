#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# Daemons
thunar --daemon &

# Compositing
xcompmgr &
#cairo-compmgr &

# Configurations
numlockx &
xsetroot -cursor_name left_ptr &
sh .fehbg &

# Startup apps
trayer --edge top --align right --widthtype percent --width 15 --heighttype pixel --height 10 --SetPartialStrut true --transparent false --alpha 0 --tint 0x000000 --expand false &
#wicd-client &
pyvolwheel &
adeskmenu &
klipper &

exec ck-launch-session xmonad
