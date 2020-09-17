# clear my tmp directory on logout
[ ! -z "$HOME" ] && [ -d "$HOME/tmp" ] && rm -r $HOME/tmp/*
