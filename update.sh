#!/bin/bash
menu="1 - Update
2 - Upgrade
3 - Dist-Upgrade
L - List Available Upgrades
F - Update Pepper Flash
A - apt Autoremove
O - Remove Obsolete Packages
D - Purge Packages using deborphan
C - apt Clean
V - apt-get history log
Q - Exit"

while true; do
    clear
    echo "$menu"
    echo -n "Enter option: "
    read option
    case $option in
        1) sudo apt-get update ;;
        2) sudo apt-get upgrade ;;
        3) sudo apt-get dist-upgrade ;;
        l|L) apt list --upgradable 
            read -p "Press any key to continue" ;;
        f|F) sudo update-pepperflashplugin-nonfree --install ;;
        a|A) sudo apt-get autoremove ;;
        o|O) sudo aptitude purge ~o ;;
        d|D) sudo apt-get purge $(deborphan) ;; #deborphan package must be installed
        c|C) sudo apt-get clean ;;
        v|V) \less -N /var/log/apt/history.log ;;
        q|Q) exit 0 ;;
        *) echo "Wrong Option..."
            sleep 2 ;;
    esac
done
