# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH='/home/c043/.oh-my-zsh'
ZSH_THEME='powerlevel10k/powerlevel10k'
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
source /home/c043/.oh-my-zsh/oh-my-zsh.sh
set -o vi
alias cvertical="xrandr --output DVI-D-1 --rotate left"
alias lvertical="xrandr --output HDMI-1 --rotate left"
alias screenreset="autorandr docked"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

setxkbmap -layout it,it
if ! pgrep -x i3 > /dev/null; then
	startx
	polybar &
fi
