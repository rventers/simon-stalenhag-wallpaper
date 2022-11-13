#! /bin/sh

BIN_DIR=$HOME/.local/bin

echo "Uninstalling Stålenhag Wallpaper service"
systemctl stop --user stalenhag.service stalenhag.timer
systemctl disable --user stalenhag.service stalenhag.timer
sudo rm /etc/systemd/user/stalenhag.*
rm $BIN_DIR/stalenhag
rm -rf ~/.stalenhag/
