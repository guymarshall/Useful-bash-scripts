#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <project_folder>"
    exit 1
fi

project_folder=$(realpath "$1")

declare -A runtimes=(
    ["linux-x64"]="linux-x64"
    ["linux-arm64"]="linux-arm64"
    ["win-x64"]="win-x64"
    ["osx-x64"]="osx-x64"
)

for platform in "${!runtimes[@]}"; do
    echo "Publishing for platform: $platform"

    dotnet publish "$project_folder" -c Release -r "$platform" -p:PublishSingleFile=true
done