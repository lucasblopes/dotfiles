# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## CUSTOM ##
arch="lucas@192.168.1.13"
MACALAN='lgbl22@macalan.c3sl.ufpr.br'

## ALIASES ##
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

function vs {
  sudo socat PTY,link=/dev/ttyS20,raw,echo=0,crnl TCP:brcwbpc2825:5556
  sudo stty -F /dev/ttyS20 9600
  sudo chmod 666 /dev/ttyS20
}

#alias vs='sudo socat PTY,link=/dev/ttyS22,raw,echo=0,crnl TCP:brcwbnb6411:5558 && sudo stty -F /dev/ttyS22 9600 && sudo chmod 666 /dev/ttyS22'
alias open='xdg-open'
alias sc='cd /home/lucas/code/landis/S3G_Tools/send-remote-commands && source venv/bin/activate && python3 send_remote_command.py && deactivate'
alias p='python3'
alias f='cd $(fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf-tmux -p)' 
alias sb='source ~/.zshrc'
alias grep='grep --color=auto'
alias vina++='/home/lucas/code/vina++/vina++'
alias temp='~/scripts/weather.sh'
alias wallpaper='/home/lucas/scripts/wallpaper.sh'
alias ufpr='ssh lgbl22@macalan.c3sl.ufpr.br'
alias bluetooth='~/scripts/bluetooth.sh'
alias mic='pavucontrol'
alias ipconfig='ip addr show | grep "inet "'
alias tutor-git='~/scripts/tutor-git.sh'
alias v=~/.config/compilados/nvim/nvim.appimage
alias ls="eza"
alias l=ls
alias cat="bat --style=auto"
alias notes='v ~/docs/important-stuff.txt'
alias cpwd='pwd | xargs echo -n | xclip -sel clip'
alias pc='ssh $arch -p 3007'
alias tutor-git='~/scripts/tutor-git.sh'
alias cp-http='cat ~/.ssh/http | xclip -selection clipboard'
alias nms75='ssh nms@10.55.47.75'
alias nms100='ssh nms@10.55.47.100'
alias nms101='ssh nms@10.55.47.101'
alias ccg='ssh ccguardian@brcwbvr38'
alias todo='v ~/docs/todo.md'

export EDITOR='~/.config/compilados/nvim/nvim.appimage'
export VISUAL='~/.config/compilados/nvim/nvim.appimage'

source ~/powerlevel10k/powerlevel10k.zsh-theme

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
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
