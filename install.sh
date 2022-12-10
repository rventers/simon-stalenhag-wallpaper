#! /bin/sh

BIN_DIR=$HOME/.local/bin

# Create BIN_DIR if missing.
[ -d $BIN_DIR ] || mkdir $BIN_DIR

# Install the service if $BIN_DIR is found in $PATH.
if [[ "$PATH" =~ "$BIN_DIR" ]]; then
    echo "Installing Stålenhag Wallpaper service"
    cp stalenhag.py $BIN_DIR/stalenhag
    cp -p systemd/* $HOME/.config/systemd/user
    systemctl enable --user stalenhag.service stalenhag.timer
    systemctl start --user stalenhag.service stalenhag.timer
else
    echo "ERROR: $BIN_PATH is not found in your \$PATH"
    exit 1
fi
