#!/bin/sh

sh ~/.fehbg &
#hsetroot -tile $HOME/img/wp/wp_pattern117.gif -tint "#313131"
xsetroot -cursor_name left_ptr

xset -b
xset +fp $HOME/.local/share/fonts

offlineimap &

xrdb -load ~/.Xresources
sxhkd -c $HOME/.sxhkdrc &
swm &

exec urxvt
