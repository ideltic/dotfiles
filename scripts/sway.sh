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

function wm_install {
     echo -ne "Installing window manager.\r" && sleep 1
     echo -ne "Installing window manager..\r" && sleep 1
     echo -ne "Installing window manager...\r" && sleep 1 && echo
     
     echo "2" | sudo pacman -S --needed --noconfirm autotiling-rs brightnessctl cliphist fuzzel gnome-keyring grim pamixer pavucontrol pipewire pipewire-audio pipewire-pulse plymouth qt5-wayland qt6-wayland rust sddm slurp swayfx swaync swayimg swaylock thunar ttf-twemoji waybar wayland wl-clipboard xorg-xwayland
     yay -S --noconfirm --needed bemoji swayosd-git wbg wl-clip-persist-git && sleep 2

     echo -e "\n${GREEN}${bold}Window manager installation complete.${TEXT}${normal}\n"
     sleep 3
}

function symlinks {
     echo -ne "Creating symbolic links.\r" && sleep 1
     echo -ne "Creating symbolic links..\r" && sleep 1
     echo -ne "Creating symbolic links...\r" && sleep 1 && echo

     # symlinking new configurations
     rm -rfv ~/.config/fuzzel && ln -sfv ~/.dotfiles/.config/archive/fuzzel/ ~/.config/ && sleep 0.1
     rm -rfv ~/.config/sway && ln -sfv ~/.dotfiles/.config/archive/sway/ ~/.config/ && sleep 0.1
     rm -rfv ~/.config/swayimg && ln -sfv ~/.dotfiles/.config/archive/swayimg/ ~/.config/ && sleep 0.1
     rm -rfv ~/.config/swaync && ln -sfv ~/.dotfiles/.config/archive/swaync/ ~/.config/ && sleep 0.1
     rm -rfv ~/.config/swayosd && ln -sfv ~/.dotfiles/.config/archive/swayosd ~/.config/ && sleep 0.1
     rm -rfv ~/.config/waybar && ln -sfv ~/.dotfiles/.config/archive/waybar/ ~/.config/ && sleep 0.1
     rm -rfv ~/.config/wlogout && ln -sfv ~/.dotfiles/.config/archive/wlogout ~/.config/ && sleep 2.1

     cd ~
     echo -e "\n${GREEN}${bold}Symlinking complete.${TEXT}${normal}\n"
     sleep 3
}

echo -e "\n${WHITE}${bold}This script will automatically install & configure the SwayFX window manager and all programs required by it.\n${TEXT}${normal}" && echo
sleep 5 && cd

wm_install

symlinks

echo -e "\n${PINK}${bold}SwayFX successfully installed!${TEXT}${normal}\n"