#!/bin/bash

# Check if apt or dnf is installed
if command -v apt &> /dev/null; then
    echo "Updating packages using apt..."
    sudo apt update
    sudo apt full-upgrade -y
    sudo apt autoremove -y
    sudo apt autoclean -y
elif command -v dnf &> /dev/null; then
    echo "Updating packages using dnf..."
    sudo dnf upgrade -y
    sudo dnf autoremove -y
    sudo dnf clean all
else
    echo "Neither 'apt' nor 'dnf' is installed. Update skipped."
fi

# Check if flatpak is installed
if command -v flatpak &> /dev/null; then
    echo "Updating flatpak packages..."
    flatpak update -y
else
    echo "'flatpak' is not installed. Skipping update."
fi
