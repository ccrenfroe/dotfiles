#oh-my-zsh
export ZSH='/usr/share/oh-my-zsh'
plugins=(git branch sudo)

zstyle ':omz:update' mode auto
ZSH_THEME='random'

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
alias vim='nvim'
alias zrc='nvim ~/.zshrc'
alias zs='source ~/.zshrc'
alias hyp='nvim ~/.config/hypr/hyprland.conf'
alias way='nvim ~/.config/waybar/config.jsonc'
alias ways='nvim ~/.config/waybar/style.css'
