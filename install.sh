#! /usr/bin/bash

echo "This script assumes that you are using a nvidia GPU, and do not have yay installed."
sleep 4
echo "Beginning installation..."
sleep 1

# yay installation
sudo pacman -Syu --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/yay.git $HOME/yay && cd $HOME/yay
makepkg -si
cd ..
rm -rf $HOME/yay

echo "Yay successfully installed. 
Beginning installation of needed packages..."
sleep 5

# installing needed packages
sudo pacman -S --noconfirm --needed brightnessctl dunst feh firefox flameshot hyfetch i3 kitty neofetch pamixer picom pipewire pipewire-audio pipewire-pulse lib32-pipewire playerctl polybar rofi sddm starship thunar udiskie xf86-input-libinput xdg-user-dirs xf86-video-nouveau xorg-apps xorg-server xorg-xinput
yay -S rofi-greenclip rofi-power-menu