# Get the aliases and functions (from .bash_profile)
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

PATH="$PATH:/$HOME/.local/bin"

#Programs variables
export TERMINAL="st"
export BROWSER="qutebrowser"
export EDITOR="vim"

##autologin at tty1
#if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
#	exec startx
#fi

#Luke Smith's autologin on tty1
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
