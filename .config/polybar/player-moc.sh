#!/bin/sh

if [ "$(mocp -Q %state)" != "STOP" ];then
    SONG=$(mocp -Q %song)
        
    if [ -n "$SONG" ]; then
        echo "$SONG - $(mocp -Q %artist)"
    else
        basename "$(mocp -Q %file)"
    fi
else
    echo ""
fi
