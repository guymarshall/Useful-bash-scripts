#!/bin/bash

git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd ~/visual-studio-code-bin
makepkg -si
cd

git clone https://aur.archlinux.org/minecraft-launcher.git
cd ~/minecraft-launcher
makepkg -si
cd

git clone https://aur.archlinux.org/atlauncher.git
cd ~/atlauncher
makepkg -si
cd