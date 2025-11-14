#oh-my-zsh
export ZSH='/usr/share/oh-my-zsh'
plugins=(git sudo)

zstyle ':omz:update' mode auto

source $ZSH/oh-my-zsh.sh

#yay
alias inspect='yay -Si'
alias install='yay -Syu'
alias pkglist='yay -Qe > pkglist.txt' # pacman list (explicitly installed packages)
alias pkgrestore='yay -S --needed - < pkglist.txt'
alias search='yay -Ss'
alias update='sudo reflector --country "United States" --age 12 --sort rate --protocol https --save /etc/pacman.d/mirrorlist && yay -Syyu && pkglist'

# Programs
alias ff=firefox; alias firefox='firefox & disown'
alias spot='ncspot'
alias spoty='spotify & disown'
alias neway='waybar & disown'
alias reway='killall -9 waybar && neway'

#Configs
alias zrc='vim ~/.zshrc'
alias zs='source ~/.zshrc'
alias hyp='vim ~/.config/hypr/hyprland.conf'
alias way='vim ~/.config/waybar/config.jsonc'
alias ways='vim ~/.config/waybar/style.css'
