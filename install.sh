# this script can also be found in /sgoinfre/ under the name of
# ./wallptool_install

rm -rf $HOME/.kitty_wallp

git clone git@github.com:A-265B-K/piscine-wallpaper-changer.git $HOME/.kitty_wallp

sleep 10

cp -v $HOME/.kitty_wallp/wallpaper.service $HOME/.config/systemd/user/


systemctl --user daemon-reload
systemctl --user restart wallpaper.service

echo "Meow!"
