#!/bin/bash

# Make Developer directories
mkdir -p ~/Developer/{Temp,Repos,.Archive,Uni,Working,Scripts}
echo "Developer directory structure created"

# Copy scripts from dotfiles to Developer
cp -r ~/Scripts/* ~/Developer/Scripts/

# Remove original scripts folder
rm -rf ~/Scripts

echo "Done! Developer folder setup complete."
