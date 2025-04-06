#!/bin/bash

set -e

git clone https://github.com/Tookmund/Swapspace.git
cd Swapspace

echo "Running autoreconf..."
autoreconf -i

echo "Configuring..."
./configure

echo "Building..."
make

echo "Installing..."
sudo make install

if [ ! -f /etc/systemd/system/swapspace.service ]; then
    echo "Installing systemd service..."
    sudo cp swapspace.service /etc/systemd/system/
    sudo systemctl daemon-reexec
    sudo systemctl daemon-reload
fi

echo "Enabling and starting swapspace.service..."
sudo systemctl enable swapspace
sudo systemctl start swapspace

cd ..
rm -rf Swapspace