#!/bin/bash
set -e

if [ -d ~/Developer ]; then
    echo "Warning: ~/Developer already exists. Continue? (y/N)"
    read -r response
    if [[ ! $response =~ ^[Yy]$ ]]; then
        echo "Operation cancelled"
        exit 0
    fi
fi

mkdir -p ~/Developer/{Temp,Repos,.Archive,Uni,Working,Scripts}
echo "Developer directory structure created"

cp "$(realpath "$0")" ~/Developer/Scripts/
echo "Script folder copied to ~/Developer/Scripts/" 