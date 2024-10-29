#!/bin/bash

# Define paths and names
downloads_path="$HOME/Downloads"
blender_folder="Blender"
archive_date=$(date '+%Y.%m.%d')
archive_name="$archive_date.7z"

# Step 1: Navigate into the Blender directory
cd "$downloads_path/$blender_folder" || exit

# Step 2: Navigate out of the Blender directory
cd "$downloads_path" || exit

# Step 3: Compress the Blender directory into a .7z file with the current date
7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=1000m -ms=on "$archive_name" "$blender_folder"

echo "Task completed successfully!"
