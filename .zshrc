# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zsh autocomplete
autoload -Uz compinit
compinit

# Function to clear the screen with Ctrl + Space
function clear-screen-and-scrollback() {
  builtin echoti civis >"$TTY"
  builtin print -rn -- $'\e[H\e[2J' >"$TTY"
  builtin zle .reset-prompt
  builtin zle -R
  builtin print -rn -- $'\e[3J' >"$TTY"
  builtin echoti cnorm >"$TTY"
}
zle -N clear-screen-and-scrollback
bindkey '^ ' clear-screen-and-scrollback

## ALIASES ##

alias p='python3'
alias f='cd $(fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf-tmux -p)' 
alias sb='source ~/.zshrc'
alias grep='grep --color=auto'
alias vina++='/home/lucas/code/vina++/vina++'
alias cpwd='pwd | tr -d "\n" | xclip -selection clipboard'
alias temp='~/scripts/weather.sh'
alias wallpaper='/home/lucas/scripts/wallpaper.sh'
alias ufpr='ssh lgbl22@macalan.c3sl.ufpr.br'
alias bluetooth='~/scripts/bluetooth.sh'
alias mic='pavucontrol'
alias ipconfig='ip addr show | grep "inet "'
alias tutor-git='~/scripts/tutor-git.sh'
alias s='~/scripts/PDF-Search/pdf-search.sh'
alias v=nvim
alias ls="exa"
alias l=ls
alias cat="bat --style=auto"
alias lg=lazygit
alias lab="cd ~/code/homelab"
alias genpass="openssl rand -base64 64"

MACALAN='lgbl22@macalan.c3sl.ufpr.br'

if [ "$TERM" = "tmux-256color" ]; then
	/bin/echo -e "
	\e]P0#191724
	\e]P1#eb6f92
	\e]P2#9ccfd8
	\e]P3#f6c177
	\e]P4#31748f
	\e]P5#c4a7e7
	\e]P6#ebbcba
	\e]P7#e0def4
	\e]P8#26233a
	\e]P9#eb6f92
	\e]PA#9ccfd8
	\e]PB#f6c177
	\e]PC#31748f
	\e]PD#c4a7e7
	\e]PE#ebbcba
	\e]PF#e0def4
	"
	# get rid of artifacts
	clear
fi

xmodmap ~/.Xmodmap
ZSH_THEME="powerlevel10k/powerlevel10k"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

## Rancher Desktop and Kubectl

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/home/lucas/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

## Activate kubectl autocomplete
source ~/.kube/kubectl_completion.zsh

# Kubectl alias
alias k=kubectl
compdef k=kubectl
export KUBE_EDITOR=nvim
