# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias ll='ls -l'
alias la='ls -Al'
alias vb='vim /home/vbox/.bashrc'
alias nf='neofetch'
alias xbi='sudo xbps-install'
alias xbs='xbps-query -Rs'
alias xbr='sudo xbps-remove -R'
alias xbss='sudo xbps-install -S'
alias xbu='sudo xbps-install -Su'

