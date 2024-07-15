#!/usr/bin/env bash

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

clear

if [ ! -f /usr/bin/figlet ]
then
    echo -e "${YELLOW}The program \"figlet\" is necessary for the script, but it was not found.${TEXT}\n"
    read -p "Would you like to install it now? (y/n): " -n 1 -r $INSTALL && echo
fi
case $INSTALL in
    y|Y )
        clear
        echo -e "\nInstalling figlet..." && sleep 2
        sudo pacman -S --needed figlet
        echo -e "${GREEN}\nFiglet installed!" && sleep 2
        ;;
    n|N )
        echo -e "\nExiting..." && sleep 0.05
        exit 1
        ;;
esac