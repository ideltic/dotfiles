export PATH="$PATH:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.nvm/versions/node/*/bin"
export EDITOR="code"
export TERMINAL="konsole"

# dont remember what this does tbh
export LIBGL_ALWAYS_INDIRECT=0

WHITE="\033[37m"
GREEN="\033[32m"
PINK="\033[35m"
TEXT="\033[0;39m"

bold=$(tput bold)
normal=$(tput sgr0)

# random aliases
alias ff='clear && fastfetch -c ~/.config/fastfetch.jsonc'
alias gae='clear && hyfetch'
alias meow='cat ~/documents/meow.txt'
alias neofetch='clear && neofetch'
alias nf='clear && neofetch'
alias pwease='sudo'
alias snf='sudo clear && sudo neofetch'
alias uwu="clear && uwufetch"
alias :3="echo ':3'"

# actually useful shit goes here
alias c='clear'
alias cdc='cd && clear'
alias cl='clear && ls -al'
alias closedc="echo 'Closing Discord...' ; pkill -f discord"
alias cnode='clear && node'
alias c3init='node ~/projects/colon3-bot/src/index.js'
alias e='exit'
alias gp='git pull --rebase'
alias l="ls -al"
alias natalie="btm && echo 🥺"
alias playing="playerctl metadata --format '{{artist}} - {{ title}}'"
alias pubip="curl https://ipv4.icanhazip.com"
alias pwease="sudo"
alias sysrq="cat /proc/sys/kernel/sysrq"
alias vencordinstall="sh ~/.config/sh/vencordinstall.sh"
alias update="sudo pacman -Syu"
alias update-mirrors="sudo clear ; sudo reflector --latest 200 --protocol https --sort rate --country US --save /etc/pacman.d/mirrorlist --verbose"
alias updatepoweroff="sudo pacman -Syu --noconfirm ; sleep 0.1 ; echo -e '\n${bold}System updates complete.${normal}\n' ; sleep 3 ; yay --noconfirm ; sleep 0.1 ; echo -e '\n${bold}AUR updates complete.${normal}\n' ; sleep 3 ; echo -e '\n${GREEN}${bold}All updates complete. Powering off now...${TEXT}${normal}\n' ; sleep 5 ; systemctl poweroff"
