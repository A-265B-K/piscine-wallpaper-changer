#!/bin/bash

#DIR="$HOME/.kitty_wallp"
#DEST="$HOME/Pictures/current_wallp.jpg"
#shopt -s nullglob
#IMG=("$DIR"/*.{jpg,jpeg,png,bmp,webp,gif})

#if (( ${#IMG[@]} > 0 )); then
#	cp "${IMG[0]}" "$DEST"
#	WALLP="$DEST"
#else
WALLP="/usr/share/42/42-purple.png"
#fi

URI="file://$WALLP"

gsettings set org.gnome.desktop.background picture-uri "$URI"
gsettings set org.gnome.desktop.background picture-uri-dark "$URI"

rm -rf $HOME/.kitty_walla
rm $HOME/.config/systemd/user/wallpaper.service

echo "unfortunately got rid of the cat wallpaper :("
