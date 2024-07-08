#! /usr/bin/env bash

sudo echo ""
clear
echo -ne "\nSetting up chaotic AUR.\r" && sleep 1
echo -ne "Setting up chaotic AUR..\r" && sleep 1
echo -ne "Setting up chaotic AUR...\r" && sleep 1.5
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com && sleep 0.5
sudo pacman-key --lsign-key 3056513887B78AEB && sleep 0.5
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' --noconfirm && sleep 0.5
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm && sleep 0.5

echo -e '\n[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist ' | sudo tee -a /etc/pacman.conf && sleep 0.5

echo -e "\n\nChaotic AUR successfully installed!\n"
