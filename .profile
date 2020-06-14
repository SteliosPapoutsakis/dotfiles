#/bin/sh

# Enviromental variables are set here

export PATH=$PATH:/home/stelios/.tools/bin:/home/stelios/.cargo/bin

# Default Programs
export EDITOR="vim"

# clean up config files NOT to be in home directory
export ENV=$HOME/.config/ksh/kshrc
export VIMINIT="source ~/.config/vim/vimrc"
export MYVIMRC="/home/stelios/.config/vim/vimrc"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/npm/npmrc"


