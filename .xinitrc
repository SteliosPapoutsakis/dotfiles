
# window transparcy 
xcompmgr & 

# update status bar

while true; do
	/home/stelios/.local/bin/status_bar
	sleep 20s
done &

# wall paper
feh --bg-scale /home/stelios/personal-files/img/wallpaper.jpg
exec dbus-launch --sh-syntax --exit-with-session dwm

