#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_directory> <output_directory>"
    exit 1
fi

input_dir="$1"
output_dir="$2"

mkdir -p "$output_dir"

for input_file in "$input_dir"/*.mp4; do
    filename=$(basename "$input_file")
    output_file="$output_dir/$filename"

    ffmpeg -i "$input_file" -c:v libx265 -crf 28 -c:a copy "$output_file"
done
