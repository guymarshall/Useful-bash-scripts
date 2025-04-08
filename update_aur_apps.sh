#!/bin/bash

if [ -d ~/visual-studio-code-bin ]; then
    cd ~/visual-studio-code-bin
    git pull
    makepkg -si --noconfirm
    cd
else
    echo "visual-studio-code-bin directory not found, skipping..."
fi

if [ -d ~/minecraft-launcher ]; then
    cd ~/minecraft-launcher
    git pull
    makepkg -si --noconfirm
    cd
else
    echo "minecraft-launcher directory not found, skipping..."
fi

if [ -d ~/atlauncher ]; then
    cd ~/atlauncher
    git pull
    makepkg -si --noconfirm
    cd
else
    echo "atlauncher directory not found, skipping..."
fi
