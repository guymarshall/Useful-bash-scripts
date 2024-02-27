#!/bin/bash

# Define paths and names
downloads_path="$HOME/Downloads"
programming_folder="Programming"
script_name="cargo-clean-all.sh"
archive_date=$(date '+%Y.%m.%d')
archive_name="$archive_date.7z"

# Step 1: Navigate into the Programming directory
cd "$downloads_path/$programming_folder" || exit

# Step 2: Run the cargo-clean-all.sh script
./"$script_name"

# Step 3: Navigate out of the Programming directory
cd "$downloads_path" || exit

# Step 4: Compress the Programming directory into a .7z file with the current date
7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=1000m -ms=on "$archive_name" "$programming_folder"

echo "Task completed successfully!"