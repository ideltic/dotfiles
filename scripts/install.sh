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

function yay_install {
     echo -ne "Installing yay.\r" && sleep 1
     echo -ne "Installing yay..\r" && sleep 1
     echo -ne "Installing yay...\r" && sleep 1 && echo

     sudo pacman -Syu --noconfirm --needed base-devel git
     git clone https://aur.archlinux.org/yay.git /home/$USER/yay && cd /home/$USER/yay
     makepkg -si
     cd ..
     rm -rf /home/$USER/yay

     echo
     echo -e "${GREEN}${bold}Yay successfully installed.${TEXT}${normal}"
     sleep 3 && echo
} 

function wm_install {
     echo -ne "Installing window manager.\r" && sleep 1
     echo -ne "Installing window manager..\r" && sleep 1
     echo -ne "Installing window manager...\r" && sleep 1 && echo
     
     #echo "2" | sudo pacman -S --needed --noconfirm autotiling-rs brightnessctl cliphist fuzzel gnome-keyring greetd grim pamixer pavucontrol pipewire pipewire-audio pipewire-pulse plymouth qt5-wayland qt6-wayland rust slurp swayimg swaylock thunar waybar wayland wl-clipboard xorg-xwayland
     #yay -S --noconfirm --needed bemoji greetd-wlgreet swayfx swaync swayosd-git ttf-twemoji wbg wl-clip-persist-git

     echo
     echo -e "${GREEN}${bold}Window manager installation complete.${TEXT}${normal}"
     sleep 3 && echo
}

function pkg_install {
     echo -ne "Installing needed packages.\r" && sleep 1
     echo -ne "Installing needed packages..\r" && sleep 1
     echo -ne "Installing needed packages...\r" && sleep 1 && echo

     #echo "2" | sudo pacman -S --needed --noconfirm bitwarden bottom code discord firefox hyfetch kitty lxappearance neofetch neovim p7zip pacman-contrib playerctl seahorse starship udiskie uwufetch vlc wezterm wezterm-shell-integration wezterm-terminfo
     #yay -S --noconfirm --needed prismlauncher-qt5-bin
     
     echo
     echo -e "${GREEN}${bold}Package installation complete.${TEXT}${normal}"
     sleep 3 && echo
}

function symlinks {
     echo -ne "Creating symbolic links.\r" && sleep 1
     echo -ne "Creating symbolic links..\r" && sleep 1
     echo -ne "Creating symbolic links...\r" && sleep 1 && echo

     # creating dotfiles directory, removing original gitclone
     #mkdir -v ~/.dotfiles && mv -v ~/dotfiles/* ~/.dotfiles && mv -v ~/dotfiles/.* ~/.dotfiles && sleep 0.1
     #cd ~/.dotfiles && rm -rfv ~/dotfiles && sleep 0.4

     # symlinking new configurations
     #rm -rfv ~/.config/fuzzel && ln -sfv ~/.dotfiles/.config/fuzzel/ ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/hyfetch.json && ln -sfv ~/.dotfiles/.config/hyfetch.json ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/kitty && ln -sfv ~/.dotfiles/.config/kitty/ ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/neofetch && ln -sfv ~/.dotfiles/.config/neofetch/ ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/nvim && ln -sfv ~/.dotfiles/.config/nvim/ ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/qt5ct && ln -sfv ~/.dotfiles/.config/qt5ct/ ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/starship.toml && ln -sfv ~/.dotfiles/.config/starship.toml ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/sway && ln -sfv ~/.dotfiles/.config/sway/ ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/swayimg && ln -sfv ~/.dotfiles/.config/swayimg/ ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/swaync && ln -sfv ~/.dotfiles/.config/swaync/ ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/swayosd && ln -sfv ~/.dotfiles/.config/swayosd ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/systemd && ln -sfv ~/.dotfiles/.config/systemd ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/uwufetch && ln -sfv ~/.dotfiles/.config/uwufetch ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/waybar && ln -sfv ~/.dotfiles/.config/waybar/ ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/wlogout && ln -sfv ~/.dotfiles/.config/wlogout ~/.config/ && sleep 0.1
     #rm -fv ~/.bashrc && ln -sfv ~/.dotfiles/.bashrc ~/.bashrc && sleep 0.1
     #rm -fv ~/.wezterm.lua && ln -sfv ~/.dotfiles/.wezterm.lua ~/.wezterm.lua && sleep 0.1
     #rm -rfv ~/.local/share/fonts && ln -sfv ~/.dotfiles/fonts/ ~/.local/share/ && sleep 0.1
     #sudo rm -rfv /etc/greetd/* && sudo cp -v ~/.dotfiles/greetd/config.toml /etc/greetd/ && sudo cp -v ~/.dotfiles/greetd/sway-config /etc/greetd/ && sleep 0.1
     #sudo cp -v ~/.dotfiles/backgrounds/fuji.png /etc/greetd/ && sudo cp -v ~/.dotfiles/.config/sway/appearance/catppuccin /etc/greetd/ && sleep 0.1
     #mkdir -pv ~/Pictures/backgrounds && ln -sfv ~/.dotfiles/backgrounds ~/Pictures/backgrounds && sleep 0.1
     #ln -sfv ~/.dotfiles/fonts ~/.local/share/fonts
     #ln -sfv ~/.dotfiles/sh ~/.config/

     cd ~
     echo
     echo -e "${GREEN}${bold}Symlinking complete.${TEXT}${normal}"
     sleep 3 && echo
}

function catppuccinify {
     echo -ne "Beginning the catppuccin-ification.\r" && sleep 1
     echo -ne "Beginning the catppuccin-ification..\r" && sleep 1
     echo -ne "Beginning the catppuccin-ification...\r" && sleep 1 && echo

     mkdir -v ~/ctptemp && sleep 0.1
     cd ~/ctptemp
     
     # gtk ctp installation

     #rm -rfv ~/.config/gtk-2.0 && ln -sfv ~/.dotfiles/.config/gtk-2.0/ ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/gtk-3.0 && ln -sfv ~/.dotfiles/.config/gtk-3.0/ ~/.config/ && sleep 0.1
     #rm -rfv ~/.config/gtk-4.0 && ln -sfv ~/.dotfiles/.config/gtk-4.0/ ~/.config/ && ln -sfv ~/.dotfiles/.config/gtk-4.0 ~/.themes/Catppuccin-Macchiato-Standard-Pink-Dark/ && sleep 0.1

     # grub ctp installation
     git clone https://github.com/catppuccin/grub && cd grub
     # instructions go here
     cd .. && sleep 0.2

     # plymouth ctp installation
     git clone https://github.com/catppuccin/plymouth && cd plymouth && sleep 0.1
     sudo cp -r themes/catppuccin-macchiato /usr/share/plymouth/themes/ && sleep 0.1
     sudo plymouth-set-default-theme -R catppuccin-macchiato
     cd .. && sleep 0.2

     # tty ctp installation
     git clone https://github.com/catppuccin/tty && cd tty
     # instructions go here
     cd .. && cd .. && sleep 0.2

     # gtk ctp installation
     git clone https://github.com/catppuccin/gtk && cd gtk
     # instructions go here
     cd .. && cd .. && sleep 0.2

     # remove temp directory
     rm -rfv ~/ctptemp
     
     echo
     echo -e "${GREEN}${bold}Catppuccin-ification complete.${TEXT}${normal}"
     sleep 3 && echo
}

#while :
#do
## stolen from: https://askubuntu.com/a/970898
## non-root commands must be run as:
## `sudo -u $real_user <command>`
#if ! [ $(id -u) = 0 ]; then
#   echo "The script need to be run as root." >&2
#   exit 1
#fi
#
#if [ $SUDO_USER ]; then
#    real_user=$SUDO_USER
#else
#    real_user=$(whoami)
#fi
#
#done


clear

echo -e "${PINK}${bold}
  _   _       _______       _      _____ ______ 
 | \ | |   /\|__   __|/\   | |    |_   _|  ____|
 |  \| |  /  \  | |  /  \  | |      | | | |__   
 | .   | / /\ \ | | / /\ \ | |      | | |  __|  
 | |\  |/ ____ \| |/ ____ \| |____ _| |_| |____ 
 |_| \_/_/__ _\_\_/_/____\_\______|_____|______|
      / ____|  ____|__   __| |  | |  __ \       
     | (___ | |__     | |  | |  | | |__) |      
      \___ \|  __|    | |  | |  | |  ___/       
      ____) | |____   | |  | |__| | |           
     |_____/|______|  |_|   \____/|_|           
${normal}${TEXT}
" && sleep 0.1
echo -e "          ${bold}${CYAN}---===${PINK}=====${WHITE}=====${PINK}=====${CYAN}===---" && echo
echo -e "${WHITE}${bold}'Natalie Setup' by Natalie :3 (https://github.com/Nyatalieeee)" && echo
echo -e "${TEXT}${normal}Running this script will install, configure, and then apply the Catppuccin theme to all necessary packages." && echo

sleep 5 && cd

# yay installation
yay_install

# window manager installation
#wm_install

# installing other needed packages
#pkg_install

# creating symlinks
#symlinks

#catppuccinify

# [USE THIS: https://wiki.archlinux.org/title/Uniform_look_for_Qt_and_GTK_applications]

#sudo systemctl enable greetd.service && sleep 0.1
#sudo systemctl enable systemd-resolved.service && sleep 0.15

clear && hyfetch

echo -e "${GREEN}${bold}Installation complete! You may now reboot into your new setup.${TEXT}${normal}" && echo
