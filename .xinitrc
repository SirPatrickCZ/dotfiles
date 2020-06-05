#Executed by startx

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

setxkbmap cz
sxhkd &
#nitrogen --restore
setroot --restore
xset -b
numlockx on
#xfce4-power-manager & 
#xset dpms 0 0 600
#xautolock -detectsleep -time 20 -locker "/usr/bin/sudo /usr/bin/zzz" &
#xrandr -s 1600x900
#xfce4-panel &
#polybar bar &
dunst &
xsetroot -cursor_name left_ptr
xcompmgr -l -5 -t -5 -r 4 -cC -V -b
udiskie &
dropbox start &
kdeconnect-indicator &
xfce4-clipman &
nm-applet &

#exec ck-launch-session dbus-launch --sh-syntax --exit-with-x11 bspwm
exec ck-launch-session dbus-launch bspwm
#exec bspwm
