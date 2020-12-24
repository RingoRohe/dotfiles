#!/bin/bash
#
# a simple dmenu session script 
#
###

DMENU='rofi -dmenu'
choice=$(echo -e "shutdown\nreboot\nsuspend\nlogout\nhibernate\nlock" | $DMENU)

case "$choice" in
    lock) betterlockscreen -l blur & ;;
    logout) i3-msg exit & ;;
    shutdown) i3exit shutdown & ;;
    reboot) i3exit reboot now & ;;
    suspend) i3exit suspend & ;;
    hibernate) i3exit hibernate & ;;
esac