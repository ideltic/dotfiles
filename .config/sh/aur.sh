#! /usr/bin/env bash

# manually install yay-bin
echo "" && echo "Installing yay-bin..." && sleep 4
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && sleep 0.5
makepkg -si && sleep 0.3 & cd .. && sleep 0.2
rm -rfv yay-bin && sleep 0.5

# chaotic aur setup
echo ""
echo "yay-bin successfully installed!" && echo "Setting up chaotic AUR..." && sleep 4
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com && sleep 0.5
sudo pacman-key --lsign-key 3056513887B78AEB && sleep 0.5
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' && sleep 0.5
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' && sleep 0.5
echo '[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist ' | sudo tee -a /etc/pacman.conf && sleep 0.5

echo "Chaotic AUR successfully installed!" && echo ""
