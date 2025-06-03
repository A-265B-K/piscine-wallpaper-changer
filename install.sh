# this script can also be found in /sgoinfre/ under the name of
# ./wallptool_install

rmdir $HOME/.kitty_wallp

git clone git@github.com:A-265B-K/piscine-wallpaper-changer.git $HOME/.kitty_wallp



sleep 10

cp $HOME/.kitty_wallp/wallpaper.service $HOME/.config/systemd/user/

echo "Meow!"
