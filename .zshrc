neofetch

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
# eval "$(starship init zsh)"

# Aliases
alias ls="exa --icons --group-directories-first"
alias ll="exa --long --header"
alias lsd="exa --icons --group-directories-first -1"
alias cat="bat"
alias ipv4="ip addr show | grep 'inet ' | grep -v '127.0.0.1' | cut -d' ' -f6 | cut -d/ -f1"
alias ipv6="ip addr show | grep 'inet6 ' | cut -d ' ' -f6 | sed -n '2p'"
alias upgrade="yay -Sy &> /dev/null && yay -Qu"
alias fetch="neofetch"
alias clean="sudo pacman -Scc && yay -Scc"
alias hypr="Hyprland"

# Path
export PATH=$PATH:~/.local/share/nvim/mason/bin/
export PATH=~/.cargo/bin:$PATH
export PATH=$PATH:/home/marin/.spicetify
export PATH=$PATH:/home/marin/.local/bin

eval "$(oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/kali.omp.json)"
