#! /bin/sh

BIN_DIR=$HOME/.local/bin
SYSD_DIR=$HOME/.config/systemd/user

echo "Uninstalling Stålenhag Wallpaper service"
systemctl stop --user stalenhag.service stalenhag.timer
systemctl disable --user stalenhag.service stalenhag.timer
rm -rf $BIN_DIR/stalenhag $SYSD_DIR/stalenhag.* $HOME/.stalenhag
