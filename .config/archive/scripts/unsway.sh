#! /usr/bin/env bash

BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
PINK="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"
TEXT="\033[0;39m"
bold=$(tput bold)
normal=$(tput sgr0)

wm_uninstall() {
    echo -ne "Uninstalling window manager.\r" && sleep 1
    echo -ne "Uninstalling window manager..\r" && sleep 1
    echo -ne "Uninstalling window manager...\r" && sleep 1 && echo

    sudo pacman -Rnsu --noconfirm autotiling-rs cliphist fuzzel grim slurp swayfx swaync swayimg thunar bemoji-git swayosd-git wbg wl-clip-persist-git && sleep 2

    echo -e "\n${GREEN}${bold}Window manager successfully uninstalled.${TEXT}${normal}\n"
    sleep 3
}

unsymlink() {
    echo -ne "Removing symbolic links.\r" && sleep 1
    echo -ne "Removing symbolic links..\r" && sleep 1
    echo -ne "Removing symbolic links...\r" && sleep 1 && echo

    rm -rfv ~/.config/fuzzel && sleep 0.2
    rm -rfv ~/.config/sway && sleep 0.2
    rm -rfv ~/.config/swayimg && sleep 0.2
    rm -rfv ~/.config/swaync && sleep 0.2
    rm -rfv ~/.config/swayosd && sleep 0.2
    rm -rfv ~/.config/waybar && sleep 0.2
    rm -rfv ~/.config/wlogout && sleep 2.2

    cd ~
    echo -e "\n${GREEN}${bold}Unsymlinking complete.${TEXT}${normal}\n"
    sleep 3
}

clear

echo -e "\n${WHITE}${bold}This script will automatically uninstall the SwayFX window manager and all programs it requires.\n\nIf you ever want to reinstall SwayFX, simply run the \"sway.sh\" script again.\n${TEXT}${normal}" && echo
sleep 8 && cd

wm_uninstall

unsymlink

echo -e "\n${PINK}${bold}SwayFX successfully uninstalled!${TEXT}${normal}\n"
