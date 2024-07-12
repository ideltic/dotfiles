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

function yayInstall {
    echo -ne "${bold}Installing yay.\r" && sleep 1
    echo -ne "Installing yay..\r" && sleep 1
    echo -ne "Installing yay...\r\n${normal}" && sleep 1.5

    sudo pacman -S --noconfirm --needed base-devel git
    git clone --quiet https://aur.archlinux.org/yay.git $HOME/yay && cd $HOME/yay
    makepkg -si --noconfirm
    cd $HOME
    rm -rf $HOME/yay

    echo
    echo -e "\n${bold}Yay successfully installed!\n${normal}" && sleep 3
}

function chaur {
    sudo echo ""
    clear
    echo -ne "${bold}\nSetting up chaotic AUR.\r" && sleep 1
    echo -ne "Setting up chaotic AUR..\r" && sleep 1
    echo -ne "Setting up chaotic AUR...\r\n${normal}" && sleep 1.5

    sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com && sleep 0.5
    sudo pacman-key --lsign-key 3056513887B78AEB && sleep 0.5
    sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' --noconfirm && sleep 0.5
    sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm && sleep 0.5

    echo -e '\n[chaotic-aur]
    Include = /etc/pacman.d/chaotic-mirrorlist ' | sudo tee -a /etc/pacman.conf && sleep 0.5

    echo -e "\n\n${bold}Chaotic AUR successfully installed!\n${normal}" && sleep 3
}

function pkgInstall {
    echo -ne "${bold}Installing packages.\r" && sleep 1
    echo -ne "Installing packages..\r" && sleep 1
    echo -ne "Installing packages...\r\n${normal}" && sleep 1.75

    sudo pacman -S --noconfirm --needed sddm plasma
    sudo pacman -S --noconfirm --needed bottom cmatrix code discord dolphin firefox hyfetch gwenview konsole neofetch neovim premid prismlauncher slack-desktop spectacle uwufetch zsh

    if [ ! -d /usr/share/icons/Papirus-Dark/ ]
    then
        echo -e "\nPapirus icon theme not found. Installing..." && sleep 3 && echo ""
        sudo pacman -S --noconfirm --needed papirus-icon-theme
        yay -S --noconfirm --needed papirus-folders-catppuccin-git
        papirus-folders -C cat-macchiato-pink --theme Papirus-Dark
        gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
    else
        echo -e "\nPapirus icon theme already installed. Skipping..." && sleep 3 && echo ""
    fi

    echo -ne "\n${bold}Packages successfully installed!\n${normal}" && sleep 3
}

function symlink {
    echo -ne "${bold}Symlinking config directories.\r" && sleep 1
    echo -ne "Symlinking config directories..\r" && sleep 1
    echo -ne "Symlinking config directories...\r\n${normal}" && sleep 1.5

    # removing already existing configs
    rm -rfv ~/.config/neofetch && sleep 0.1
    rm -rfv ~/.config/uwufetch && sleep 0.1
    rm -rfv ~/.config/qt5ct && sleep 0.1
    rm -rfv ~/.local/share/fonts && sleep 0.1
    rm -rfv ~/.local/share/konsole && sleep 0.1
    rm ~/.config/fastfetch.jsonc && sleep 0.1
    rm ~/.config/hyfetch.json && sleep 0.1
    rm ~/.config/starship.toml && sleep 0.5

    # symlinking new configs
    mkdir --parents --verbose ~/projects/scripts && sleep 0.1
    ln -sfv ~/.dotfiles/scripts ~/projects/scripts && sleep 0.1
    ln -sfv ~/.dotfiles/.config/neofetch ~/.config/ && sleep 0.1
    ln -sfv ~/.dotfiles/.config/uwufetch ~/.config/ && sleep 0.1
    ln -sfv ~/.dotfiles/.config/sh ~/.config/ && sleep 0.1
    ln -sfv ~/.dotfiles/.config/qt5ct ~/.config/ && sleep 0.1
    ln -sfv ~/.dotfiles/fonts ~/.local/share/fonts && sleep 0.1
    ln -sfv ~/.dotfiles/.konsole ~/.local/share/konsole && sleep 0.1
    ln -sfv ~/.dotfiles/.config/fastfetch.jsonc ~/.config/ && sleep 0.1
    ln -sfv ~/.dotfiles/.config/hyfetch.json ~/.config/ && sleep 0.1
    ln -sfv ~/.dotfiles/.config/starship.toml ~/.config/ && sleep 0.1
    ln -sfv ~/.dotfiles/zsh/.zprofile ~/.zprofile && sleep 0.1
    ln -sfv ~/.dotfiles/zsh/.zshenv ~/.zshenv && sleep 0.1
    ln -sfv ~/.dotfiles/zsh/.zshrc ~/.zshrc && sleep 0.1
    ln -sfv ~/.dotfiles/zsh/.zshrc.zni ~/.zshrc.zni && sleep 0.1
    ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig && sleep 0.8

    sudo rm -rfv /root/.config/neofetch && sleep 0.1
    sudo rm /root/hyfetch.json && sleep 0.1
    sudo rm /root/starship.toml && sleep 0.3

    sudo ln -sfv ~/.dotfiles/root/neofetch /root/.config/ && sleep 0.1
    sudo ln -sfv ~/.dotfiles/root/hyfetch.json /root/.config/ && sleep 0.1
    sudo ln -sfv ~/.dotfiles/root/starship.toml /root/.config/ && sleep 0.5

    echo -ne "\n${bold}Symlinking complete!\n${normal}" && sleep 3

}

function renameHomeDirs {
    echo -ne "${bold}Renaming home directories.\r" && sleep 1
    echo -ne "Renaming home directories..\r" && sleep 1
    echo -ne "Renaming home directories...\r" && sleep 1
    echo -ne "Renaming home directories... because why not\r${normal}" && sleep 2

    mv -v ~/Desktop ~/desktop && sleep 0.1
    mv -v ~/Documents ~/documents && sleep 0.1
    mv -v ~/Downloads ~/downloads && sleep 0.1
    mv -v ~/Music ~/music && sleep 0.1
    mv -v ~/Pictures ~/pictures && sleep 0.1
    mv -v ~/Public ~/public && sleep 0.1
    mv -v ~/Templates ~/templates && sleep 0.1
    mv -v ~/Videos ~/videos && sleep 0.5

    echo -ne "\n${bold}Home directories renamed!\n${normal}" && sleep 3
}

function sddmTheme {
    sudo echo -ne "\n${bold}Installing SDDM theme.\r" && sleep 1
    echo -ne "Installing SDDM theme..\r" && sleep 1
    echo -ne "Installing SDDM theme...\r" && sleep 1.5

    sudo cp -rv ~/.dotfiles/sddm/catppuccin-custom /usr/share/sddm/themes/ && sleep 0.3
    sudo rm -f /etc/sddm.conf
    echo -e "
[Theme]
Current=catppuccin-custom" | sudo tee -a /etc/sddm.conf && sleep 0.3

    echo -ne "\n${bold}SDDM successfully themed!\n${normal}" && sleep 3
}

###
###     actual beginning of script
###

sudo clear

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
echo -e "${TEXT}${normal}Running this script will install and configure all necessary packages." && echo

sleep 5 && cd

yayInstall

chaur

pkgInstall

symlink

renameHomeDirs

sddmTheme

echo -e "\n${GREEN}${bold}Installation complete! You may now reboot into your new setup.${TEXT}${normal}\n"