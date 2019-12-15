#!/usr/bin/env bash

# Add bin folder to path
PATH=$PATH:~/bin

# Run .bashrc
. ~/.bashrc

export QT_QPA_PLATFORMTHEME="gtk2"

# Start X automatically
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  startx
fi

