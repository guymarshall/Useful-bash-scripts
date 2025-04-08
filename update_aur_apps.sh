#!/bin/bash

cd ~/visual-studio-code-bin
git pull
makepkg -si
cd

cd ~/minecraft-launcher
git pull
makepkg -si
cd

cd ~/atlauncher
git pull
makepkg -si
cd