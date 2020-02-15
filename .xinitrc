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
#xrandr -s 1600x900
#xfce4-panel &
polybar bar &
dunst &
xsetroot -cursor_name left_ptr
#exec ck-launch-session dbus-launch --sh-syntax --exit-with-x11 bspwm
#exec ck-launch-session dbus-launch bspwm
exec bspwm
