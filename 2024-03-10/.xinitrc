xset +fp $HOME/.local/share/fonts

xrdb -load $HOME/.Xresources
pywalfox start &
picom &

xsetroot -cursor_name left_ptr &

exec dbus-launch --exit-with-session bspwm
