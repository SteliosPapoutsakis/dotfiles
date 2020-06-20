#         _              
#  _______| |__  _ __ ___ 
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__ 
# /___|___/_| |_|_|  \___|
#                        

# Note, alot of this config came from lukesmithxyz
# Thanks luke!

# load colors and define prompt
autoload -U colors && colors
PS1=$'%B%F{1}[%F{3}%n%F{4}:%F{2}%~%F{1}] %F{5}\U279C%b%f '
RPROMPT='%B%F{3}at %F{4}%M%F{2}%t%b%f'
# auto cd into typed directory
setopt autocd

# tab auto complete:
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
setopt COMPLETE_Aliases
_comp_options+=(globdots) # included hidden files
# cache
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

#source aliases if file exists
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc"


# vim mode
bindkey -v
export KEYTIMEOUT=1


# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}

_fix_cursor() {
	echo -ne '\e[5 q' # Use beam shape cursor on startup.
}

precmd_functions+=(_fix_cursor)

zle -N zle-keymap-select


# used to go make cursor go back to normal mode
zle-line-finish() {
	echo -ne '\e[1 q'
}

zle -N zle-line-finish




# code for code stack, used to quickly cd into directories 
# use dirs -v to see dir stack
autoload -Uz add-zsh-hook

DIRSTACKFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/dirs"
if [[ -f "$DIRSTACKFILE" ]] && (( ${#dirstack} == 0 )); then
	dirstack=("${(@f)"$(< "$DIRSTACKFILE")"}")
	[[ -d "${dirstack[1]}" ]] && cd -- "${dirstack[1]}"
fi
chpwd_dirstack() {
	print -l -- "$PWD" "${(u)dirstack[@]}" > "$DIRSTACKFILE"
}
add-zsh-hook -Uz chpwd chpwd_dirstack

DIRSTACKSIZE='20'

setopt AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME

## Remove duplicate entries
setopt PUSHD_IGNORE_DUPS

## This reverts the +/- operators.
setopt PUSHD_MINUS

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# source syntax highlighting if it exists
[ -f "$HOME/software/build/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && . "$HOME/software/build/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" 
