#!/bin/sh

printf "Beginning upgrade.\\n"

sudo xbps-install -S

printf "\\nUpgrade complete.\\nPress <Enter> to exit window.\\n\\n"
read -r
