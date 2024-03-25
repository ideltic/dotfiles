eval "$(starship init bash)"
export PATH="$PATH:$HOME/.cargo/bin:$HOME/.local/bin"
export GTK_THEME='Catppuccin-Macchiato-Standard-Pink-Dark:dark'
export LIBGL_ALWAYS_INDIRECT=0

neofetch && echo "fedora is better"

# random aliases
alias gae='clear && hyfetch'
alias meow='cat ~/Documents/meow'
alias neofetch='clear && neofetch'
alias nf='clear && neofetch'
alias nyarch='neofetch --kitty ~/.dotfiles/.config/neofetch/nyarch.png --size 25%'
alias uwu="clear && uwufetch"
alias :3="echo ':3'"

# actually useful shit goes here
alias c='clear'
alias closedc='bash $HOME/.config/sh/pkill-discord.sh'
alias e='exit'
alias l="ls -al"
alias playing="playerctl metadata --format '{{artist}} - {{ title}}'"
alias pwease="sudo"
alias sysrq="cat /proc/sys/kernel/sysrq"
alias vencordinstall="bash $HOME/.config/sh/vencordinstall.sh"
alias vim='nvim'
alias update="sudo pacman -Syu"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
