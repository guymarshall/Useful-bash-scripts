#!/bin/bash

if [ ! -d ~/visual-studio-code-bin ]; then
    git clone https://aur.archlinux.org/visual-studio-code-bin.git
    cd ~/visual-studio-code-bin
    makepkg -si --noconfirm
    cd
else
    echo "visual-studio-code-bin already exists, skipping..."
fi

if [ ! -d ~/minecraft-launcher ]; then
    git clone https://aur.archlinux.org/minecraft-launcher.git
    cd ~/minecraft-launcher
    makepkg -si --noconfirm
    cd
else
    echo "minecraft-launcher already exists, skipping..."
fi

if [ ! -d ~/atlauncher ]; then
    git clone https://aur.archlinux.org/atlauncher.git
    cd ~/atlauncher
    makepkg -si --noconfirm
    cd
else
    echo "atlauncher already exists, skipping..."
fi
