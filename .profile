# Get the aliases and functions (from .bash_profile)
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

#Programs variables
export TERMINAL="st"
export BROWSER="qutebrowser"
export EDITOR="vim"

#Autologin on tty1
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
