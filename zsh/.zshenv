export PATH="$PATH:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.nvm/versions/node/*/bin"
export EDITOR="nvim"
export TERMINAL="wezterm"
export GTK_THEME='Catppuccin-Macchiato-Standard-Pink-Dark:dark'

# dont remember what this does tbh
export LIBGL_ALWAYS_INDIRECT=0

# random aliases
alias gae='clear && hyfetch'
alias meow='cat ~/Documents/meow'
alias neofetch='clear && neofetch'
alias nf='clear && neofetch'
alias nyarch='neofetch --kitty ~/.dotfiles/.config/neofetch/nyarch.png --size 25%'
alias pwease='sudo'
alias snf='sudo clear && sudo neofetch'
alias uwu="clear && uwufetch"
alias :3="echo ':3'"

# actually useful shit goes here
alias c='clear'
alias cdc='cd && clear'
alias cl='clear && ls -al'
alias closedc='bash $HOME/.config/sh/pkill-discord.sh'
alias cnode='clear && node'
alias e='exit'
alias l="ls -al"
alias natalie="btm && echo 🥺"
alias playing="playerctl metadata --format '{{artist}} - {{ title}}'"
alias pubip="curl https://ipv4.icanhazip.com"
alias pwease="sudo"
alias sysrq="cat /proc/sys/kernel/sysrq"
alias vencordinstall="bash $HOME/.config/sh/vencordinstall.sh"
alias vim='nvim'
alias update="sudo pacman -Syu"
