#!/bin/bash

git clone https://aur.archlinux.org/google-chrome.git
cd ~/google-chrome
makepkg -si

cd

git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd ~/visual-studio-code-bin
makepkg -si

cd