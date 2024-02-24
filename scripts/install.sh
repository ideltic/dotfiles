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
     echo -ne "Installing yay...\r" && sleep 1

     #sudo pacman -Syu --noconfirm --needed base-devel git
     #git clone https://aur.archlinux.org/yay.git $HOME/yay && cd $HOME/yay
     #makepkg -si
     #cd ..
     #rm -rf $HOME/yay

     echo
     echo "Yay successfully installed."
     sleep 3 && echo
} 

function package_install {
     echo -ne "Installing needed packages.\r" && sleep 1
     echo -ne "Installing needed packages..\r" && sleep 1
     echo -ne "Installing needed packages...\r" && sleep 1

     #sudo pacman -S --noconfirm --needed bitwarden bottom brightnessctl code discord dunst feh firefox flameshot hyfetch i3 kitty neofetch pamixer picom pipewire pipewire-audio pipewire-pulse plymouth lib32-pipewire neovim p7zip playerctl polybar rofi sddm starship thunar udiskie uwufetch xdg-user-dirs xf86-input-libinput xf86-video-nouveau xorg-apps xorg-server xorg-xinput
     #yay -S --noconfirm --needed prismlauncher-qt5-bin rofi-greenclip rofi-power-menu slack-desktop
     
     echo
     echo "Package installation complete."
     sleep 3 && echo
}

function symlinks {
     echo -ne "Creating symbolic links.\r" && sleep 1
     echo -ne "Creating symbolic links..\r" && sleep 1
     echo -ne "Creating symbolic links...\r" && sleep 1

     # creating dotfiles directory, removing original gitclone
     #mkdir ~/.dotfiles && mv ~/dotfiles/* ~/.dotfiles && mv ~/dotfiles/.* ~/.dotfiles
     #cd ~/.dotfiles && rm -rf ~/dotfiles

     # symlinking new configurations
     #rm -rf ~/.config/dunst && ln -sf ~/.dotfiles/.config/dunst ~/.config/
     #rm -rf ~/.config/flameshot && ln -sf ~/.dotfiles/.config/flameshot ~/.config/
     #rm -rf ~/.config/hyfetch.json && ln -sf ~/.dotfiles/.config/hyfetch.json ~/.config/
     #rm -rf ~/.config/i3 && ln -sf ~/.dotfiles/.config/i3 ~/.config/
     #rm -rf ~/.config/kitty && ln -sf ~/.dotfiles/.config/kitty ~/.config/
     #rm -rf ~/.config/neofetch && ln -sf /.dotfiles/.config/neofetch ~/.config/
     #rm -rf ~/.config/picom && ln -sf ~/.dotfiles/.config/picom ~/.config/
     #rm -rf ~/.config/polybar && ln -sf ~/.dotfiles/.config/polybar ~/.config/
     #rm -rf ~/.config/rofi && ln -sf ~/.dotfiles/.config/rofi ~/.config/
     #rm -rf ~/.config/starship.toml && ln -sf ~/.dotfiles/.config/starship.toml ~/.config/
     #rm -rf ~/.config/uwufetch && ln -sf ~/.dotfiles/.config/uwufetch ~/.config/
     #rm -f ~/.bashrc && ln -sf ~/.dotfiles/.bashrc ~/.bashrc
     #mkdir -p ~/Pictures/backgrounds && ln -sf ~/.dotfiles/backgrounds ~/Pictures/backgrounds
     #ln -sf ~/.dotfiles/fonts ~/.local/share/fonts

     cd ~
     echo
     echo "Symlinking complete."
     sleep 3 && echo
}

function catppuccinify {
     echo -ne "Beginning the catppuccin-ification.\r" && sleep 1
     echo -ne "Beginning the catppuccin-ification..\r" && sleep 1
     echo -ne "Beginning the catppuccin-ification...\r" && sleep 1

     #mkdir -v ~/ctp-tempdir && cd ~/ctp-tempdir
     # git clones go here
     
     echo
     echo "Catppuccin-ification complete."
     sleep 3 && echo
}

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
"
echo -e "${WHITE}${bold}'Natalie Setup' by Natalie :3 (https://github.com/ideltic)" && echo
echo -e "${TEXT}${normal}Running this script will install, configure, and then apply the Catppuccin theme to all necessary packages." && echo

sleep 5 && cd

# yay installation
yay_install

# installing needed packages
package_install

# creating symlinks
symlinks

catppuccinify

# [USE THIS: https://wiki.archlinux.org/title/Uniform_look_for_Qt_and_GTK_applications]
