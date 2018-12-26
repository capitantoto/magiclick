#!/usr/bin/env python
# A mi Dell Latitude de 7 anios se le jodio el Caps Lock, y a veces se prende
# solo y nunca baja. Este escript lo baja a patadas con python y llamadas a X11
# Tomado de
# https://askubuntu.com/questions/80254/how-do-i-turn-off-caps-lock-the-lock-not-the-key-by-command-line/80301
from ctypes import *
X11 = cdll.LoadLibrary("libX11.so.6")
display = X11.XOpenDisplay(None)
X11.XkbLockModifiers(display, c_uint(0x0100), c_uint(2), c_uint(0))
X11.XCloseDisplay(display)
