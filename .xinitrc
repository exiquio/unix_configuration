#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# Compositing
xcompmgr &
#cairo-compmgr &

# Daemons
dropboxd &
thunar --daemon &
kwalletd &

# Configurations
# wmname LG3D &
numlockx &
xsetroot -cursor_name left_ptr &
sh .fehbg &

# Startup apps
trayer --edge top --align right --widthtype percent --width 15 --heighttype pixel --height 10 --SetPartialStrut true --transparent true --alpha 255 --tint 0x000000 --expand true &
wicd-client &
volwheel &
adeskmenu &
klipper &
kwalletmanager &

exec ck-launch-session xmonad
