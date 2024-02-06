#!/bin/bash
sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

if command -v flatpak &> /dev/null; then
    flatpak update -y
else
    echo "'flatpak' is not installed. Skipping update."
fi
