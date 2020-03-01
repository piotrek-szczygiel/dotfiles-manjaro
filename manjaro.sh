#!/bin/bash

if [ ! -f "/etc/arch-release" ]; then
    echo "Error: this script only works on Arch Linux." >&2
    exit 1
fi

set -e

function echo_yellow() {
    echo -e "\033[1;33m$1\033[0m"
}

echo_yellow "Enabling pacman colored output..."
sudo sed -i '/Color/s/^#//' /etc/pacman.conf

echo_yellow "Updating system..."
sudo pacman -Syuq --noconfirm
sudo pacman -Sq --noconfirm yay

yay -Sq --noconfirm yadm
yadm clone https://github.com/piotrek-szczygiel/dotfiles-manjaro

