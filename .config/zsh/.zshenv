# Enviromental variables are set here

[ -f "$HOME/.config/zsh/.zshenv2" ] && . $HOME/.config/zsh/.zshenv2
# set up path
typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
export PATH

# Default Programs
export EDITOR="nvim"

# clean up config files NOT to be in home directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/npm/npmrc"
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}"/gnupg

#unset VIMINIT, not sure where this is being set
unset VIMINIT

# have color in manual pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
