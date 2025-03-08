#!/bin/bash

cd ~/google-chrome
git pull
makepkg -si

cd

cd ~/visual-studio-code-bin
git pull
makepkg -si

cd