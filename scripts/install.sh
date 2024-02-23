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
echo -e "${WHITE}${bold}'Natalie Setup' by Natalie :3 (https://github.com/ideltic)"
echo -e "${TEXT}${normal}Running this script will install, configure, and then apply the Catppuccin theme to all necessary packages."
echo

echo "This script assumes that you are using a nvidia GPU, and do not have yay installed."
sleep 4
echo "Beginning installation..."
sleep 2
cd

# yay installation
# sudo pacman -Syu --noconfirm --needed base-devel git
# git clone https://aur.archlinux.org/yay.git $HOME/yay && cd $HOME/yay
# makepkg -si
# cd ..
# rm -rf $HOME/yay

sleep 1

echo "Yay successfully installed. 
Beginning installation of needed packages..."

sleep 4

# installing needed packages
# sudo pacman -S --noconfirm --needed bitwarden bottom brightnessctl code discord dunst feh firefox flameshot hyfetch i3 kitty neofetch pamixer picom pipewire pipewire-audio pipewire-pulse plymouth lib32-pipewire neovim p7zip playerctl polybar qt5ct rofi sddm starship thunar udiskie uwufetch xf86-input-libinput xdg-user-dirs xf86-video-nouveau xorg-apps xorg-server xorg-xinput

# yay -S --noconfirm --needed prismlauncher-qt5-bin rofi-greenclip rofi-power-menu slack-desktop

sleep 1

echo "Package installation complete.
Creating symbolic links..."

sleep 4

# creating dotfiles directory, removing original gitclone
# mkdir ~/.dotfiles && mv ~/dotfiles/* ~/.dotfiles && mv ~/dotfiles/.* ~/.dotfiles
# cd ~/.dotfiles && rm -rf ~/dotfiles

# symlinking new configurations
# rm -rf ~/.config/dunst && ln -sf ~/.dotfiles/.config/dunst ~/.config/
# rm -rf ~/.config/flameshot && ln -sf ~/.dotfiles/.config/flameshot ~/.config/
# rm -rf ~/.config/hyfetch.json && ln -sf ~/.dotfiles/.config/hyfetch.json ~/.config/
# rm -rf ~/.config/i3 && ln -sf ~/.dotfiles/.config/i3 ~/.config/
# rm -rf ~/.config/kitty && ln -sf ~/.dotfiles/.config/kitty ~/.config/
# rm -rf ~/.config/neofetch && ln -sf /.dotfiles/.config/neofetch ~/.config/
# rm -rf ~/.config/picom && ln -sf ~/.dotfiles/.config/picom ~/.config/
# rm -rf ~/.config/polybar && ln -sf ~/.dotfiles/.config/polybar ~/.config/
# rm -rf ~/.config/rofi && ln -sf ~/.dotfiles/.config/rofi ~/.config/
# rm -rf ~/.config/starship.toml && ln -sf ~/.dotfiles/.config/starship.toml ~/.config/
# rm -rf ~/.config/uwufetch && ln -sf ~/.dotfiles/.config/uwufetch ~/.config/
# rm -f ~/.bashrc && ln -sf ~/.dotfiles/.bashrc ~/.bashrc
# mkdir -p ~/Pictures/backgrounds && ln -sf ~/.dotfiles/backgrounds ~/Pictures/backgrounds
# ln -sf ~/.dotfiles/fonts ~/.local/share/fonts

sleep 1

cd ~
echo "Symlinking complete.
Beginning the catppuccin-ification..."

sleep 4

# mkdir -v ~/ctp-tempdir && cd ~/ctp-tempdir

# git clones go here

# [CHANGE THIS] sudo echo "QT5_QPA_PLATFORMTHEME=qt5ct" >> ~/.profile
