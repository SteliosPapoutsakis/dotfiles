# clear my tmp directory on logout
[ -d "$HOME/tmp" ] && rm -r $HOME/tmp/*
# clear sys tmp 
rm -r /tmp/*
