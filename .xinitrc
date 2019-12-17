#!/usr/bin/env bash
# ~/.xinitrc

# Load Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Arrange monitors and set wallpaper
set-monitors
set-wallpaper &

# Key bindings
sxhkd -t 10 &

# Activate numlock
numlockx &

# Hide mouse if inactive
unclutter &

# Automount
udiskie &

# Start status bar
status-bar --loop &

# Start window manager
awesome
