#!/usr/local/bin/bash
export LC_ALL=en_US.UTF-8

xset +fp $HOME/.local/share/fonts

dsbmc-cli -a &

exec i3 --shmlog-size=26214400
