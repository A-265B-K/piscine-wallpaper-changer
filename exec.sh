#!/bin/bash

DIR = "$HOME/.wallpaper/wallpapers"

IMG=($(find "$DIR" -type f \( -name '*.jpg' -o -iname '*.png' -o -iname '*.gif' \)))

if [ ${#IMG[@]} -eq 0 ]; then
	exit 1
fi

R_IMG="${IMG[RANDOM % ${#IMG[@]}"


gsettings set org.gnome.desktop.background picture-uri "file://$R_IMG"
gsettings set org.gnome.desktop.background picture-uri-dark "file://$R_IMG"

