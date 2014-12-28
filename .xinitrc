#!/bin/sh

sh ~/.fehbg &
#xsetroot -solid "#376f4a"
xsetroot -cursor_name left_ptr
xset +fp $HOME/.local/share/fonts

[ ! -s ~/.config/mpd/pid ] && mpd
mpdscribble
compton -bc
xrdb -load ~/.Xresources
sxhkd -c $HOME/.sxhkdrc &
swm &

exec urxvt
xscreensaver -no-splash &
