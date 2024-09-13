
function catppuccinify {
    echo -ne "Beginning the catppuccin-ification.\r" && sleep 1
    echo -ne "Beginning the catppuccin-ification..\r" && sleep 1
    echo -ne "Beginning the catppuccin-ification...\r" && sleep 1 && echo

    # create temporary directory
    mkdir -v ~/ctptmp && sleep 0.1
    cd ~/ctptmp
     
    # gtk ctp installation

    #rm -rfv ~/.config/gtk-2.0 && ln -sfv ~/.dotfiles/.config/gtk-2.0/ ~/.config/ && sleep 0.1
    #rm -rfv ~/.config/gtk-3.0 && ln -sfv ~/.dotfiles/.config/gtk-3.0/ ~/.config/ && sleep 0.1
    #rm -rfv ~/.config/gtk-4.0 && ln -sfv ~/.dotfiles/.config/gtk-4.0/ ~/.config/ && ln -sfv ~/.dotfiles/.config/gtk-4.0 ~/.themes/Catppuccin-Macchiato-Standard-Pink-Dark/ && sleep 0.1

    # rEFInd ctp installation
    cd /boot/EFI/refind 
    sudo mkdir -v themes && cd themes
    sudo git clone -v https://github.com/catppuccin/refind catppuccin
    sudo echo "include /boot/EFI/refind/themes/catppuccin/macchiato.conf" >> /boot/EFI/refind/refind.conf
    cd ~/ctptmp && sleep 0.2

    # plymouth ctp installation
    git clone -v https://github.com/catppuccin/plymouth && cd plymouth && sleep 0.1
    sudo cp -r themes/catppuccin-macchiato /usr/share/plymouth/themes/ && sleep 0.1
    sudo plymouth-set-default-theme -R catppuccin-macchiato
    cd ~/ctptmp && sleep 0.2

    # sddm ctp installation
    sudo pacman -Sv --needed qt5-graphicaleffects qt5-svg qt5-quickcontrols2
    git clone https://github.com/catppuccin/sddm && cd sddm/src
    sudo cp -r catppuccin-macchiato /usr/share/sddm/themes/
    # replace [Theme] area with catppuccin (how tf do i do that :sob:)
    cd ~/ctptmp && sleep 0.2

    # tty ctp installation
    git clone -v https://github.com/catppuccin/tty && cd tty
    # instructions go here
    cd ~/ctptmp && sleep 0.2

    # cursors ctp installation
    git clone -v https://github.com/catppuccin/cursors && cd cursors
    sudo 7z x cursors/Catppuccin-Macchiato-Pink-Cursors.zip /usr/share/icons/
    cd ~/ctptmp && sleep 0.2

    # gtk ctp installation
    sudo pacman -Sv --needed gnome-themes-extra
    git clone -v https://github.com/catppuccin/gtk && cd gtk
    wget https://github.com/catppuccin/gtk/releases/download/v0.7.1/Catppuccin-Macchiato-Standard-Pink-Dark.zip
    7z x Catppuccin-Macchiato-Standard-Pink-Dark.zip ~/.themes/Catppuccin-Macchiato-Standard-Pink-Dark
    cd ~/ctptmp && sleep 0.2

    # remove temp directory
    rm -rfv ~/ctptmp
     
    echo
    echo -e "${GREEN}${bold}Catppuccin-ifying complete.${TEXT}${normal}"
    sleep 3 && echo
}

catppuccinify
