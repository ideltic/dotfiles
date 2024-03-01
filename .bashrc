eval "$(starship init bash)"
export PATH="$PATH:$HOME/.cargo/bin"
export GTK_THEME='Catppuccin-Macchiato-Standard-Pink-Dark:dark'



neofetch

# random aliases
alias gae='clear && hyfetch'
alias meow='cat ~/Documents/meow'
alias neofetch='clear && neofetch'
alias ner='nerdfetch'
alias nf='clear && neofetch'
alias uwu="clear && uwufetch"
alias :3="echo ':3'"

# actually useful shit goes here
alias c='clear'
alias closedc='bash ~/projects/scripts/pkill-discord.sh'
alias e='exit'
alias evening="bash ~/projects/scripts/feh-evening.sh"
alias peaks="bash ~/projects/scripts/feh-peaks.sh"
alias fuji="bash ~/projects/scripts/feh-fuji.sh"
alias sysrq="cat /proc/sys/kernel/sysrq"
alias vencordinstall="bash ~/projects/scripts/vencordinstall.sh"
alias vim='nvim'
alias update="sudo pacman -Syu"
alias waterfall="bash ~/projects/scripts/feh-waterfall.sh"
alias waves="bash ~/projects/scripts/feh-waves.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
