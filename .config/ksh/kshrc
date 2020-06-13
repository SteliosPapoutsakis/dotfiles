#append path 
export PATH=$PATH:/home/stelios/bin:/home/stelios/.cargo/bin:/home/stelios/side_projects/android-studio/bin
export VIMINIT="source ~/.config/vim/vimrc"
set -o emacs
alias ls="ls --color"
alias gitac="git add --all && git status"
alias wakegary="wakeonlan b4:2e:99:a2:13:95"
alias q="exit"
alias c="clear"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias nil='/dev/null'
alias config='/usr/bin/git --git-dir=$HOME/side_projects/myconfig/ --work-tree=$HOME'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
# set a new alias for cd which runs cd and does an ls
cd() {
	if command cd $1; then
		ls
	fi
}
# here we are parsing to see if there is a git repo in current directory
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
## Reset to normal: \033[0m
NORM="[0m"


## Check for enviormental variable file
if [ -f "/home/stelios/.config/envrc" ]; then
	source ~/.config/envrc

fi


## Colors:
GREEN="[32m"
BLUE="[1;34m"
CYAN="[36m"
BOLD="[1m"
GOLD="[33m"
IP=$( name=`hostname -I | awk '{$1=$1};1'`; if [ -z $name ] ; then; echo 'None'; else; echo $name; fi )
#sets custum display prompt
export PS1="$BOLD$GREEN$LOGNAME$NORM $BLUE\$(pwd | sed "s,^$HOME,~,") $GOLD\[IP:$IP\]$CYAN\$(parse_git_branch)$NORM
>>> "
unset GREEN BLUE CYAN BOLD GOLD NORM

