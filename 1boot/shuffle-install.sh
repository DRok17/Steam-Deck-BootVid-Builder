#!/bin/bash

mkdir -p "$HOME/.config/systemd/user"

# Install the service file
ln -sf "$HOME/homebrew/.shuffle/shuffle.service" "$HOME/.config/systemd/user/shuffle.service"
systemctl --user daemon-reload
systemctl --user enable --now shuffle.service
echo "Service-Installed" > z-Service-Installed.txt
