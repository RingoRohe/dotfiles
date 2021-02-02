#!/bin/bash
#
# a simple dmenu session script 
#
###

hostname=$(uname -n)

DMENU='rofi -dmenu'
choice=$(echo -e "shutdown\nreboot\nsuspend\nlogout\nhibernate\nlock" | $DMENU)

if [ "$hostname" = "ManjaroVM" ]; then
    case "$choice" in
        shutdown) i3exit shutdown & ;;
        reboot) i3exit reboot now & ;;
        suspend) i3exit suspend & ;;
        logout) i3-msg exit & ;;
        hibernate) i3exit hibernate & ;;
        lock) betterlockscreen -l blur & ;;
    esac
fi

if [ "$hostname" = "ThinkPad-T570" ]; then
    case "$choice" in
        shutdown) cinnamon-session-quit --power-off & ;;
        reboot) cinnamon-session-quit --reboot & ;;
        suspend) systemctl suspend & ;;
        logout) cinnamon-session-quit --logout & ;;
        hibernate) systemctl hibernate & ;;
        lock) cinnamon-screensaver-command --lock & ;;
    esac
fi
