#!/bin/sh

#sh ~/.fehbg &
xsetroot -solid "#376f4a"
xsetroot -cursor_name left_ptr

xrdb -load ~/.Xresources

sxhkd -c $HOME/.sxhkdrc &
swm &

exec urxvt
