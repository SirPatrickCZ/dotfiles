# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\033[01;36m\][\u@\h\[\033[01;37m\] \W\[\033[01;36m\]]\$\[\033[00m\] '  #Cyam
#PS1='[\u@\h \W]\$ '

alias grep='grep --color'
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ls -Al'
alias du='du -h'
alias df='df -h'
alias vb='vim $HOME/.bashrc'
alias nf='neofetch'
alias xbi='sudo xbps-install'
alias xbs='xbps-query -Rs'
alias xbr='sudo xbps-remove -R'
alias xbss='sudo xbps-install -S'
alias xbu='sudo xbps-install -Su'
alias nas='sudo mount -t cifs -o user=public,password=,iocharset=utf8,noperm //192.168.0.119/Public /mnt/NAS'
alias unas='sudo umount ~/NAS'
alias numof='find ./ -type f | wc -l'
alias aha='ssh alarm@192.168.0.118'

#ex - archive extractor
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
