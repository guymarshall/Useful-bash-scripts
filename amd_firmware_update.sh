#!/bin/bash

REPO_URL="git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git"
CLONE_DIR="/tmp/amd-firmware"
TARGET_DIR="/lib/firmware/amdgpu"

git clone "$REPO_URL" "$CLONE_DIR" || { echo "Failed to clone repository."; exit 1; }

echo "Copying firmware files..."
sudo cp -r "$CLONE_DIR"/amdgpu/* "$TARGET_DIR" || { echo "Failed to copy files."; exit 1; }

echo "Cleaning up..."
rm -rf "$CLONE_DIR" || { echo "Failed to remove cloned directory."; exit 1; }

echo "AMD GPU firmware update completed successfully."