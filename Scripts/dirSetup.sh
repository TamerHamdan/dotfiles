#!/bin/bash

# Make Developer directories
mkdir -p ~/Developer/{Temp,Repos,.Archive,Uni,Working,Scripts}
echo "Developer directory structure created"

# Copy scripts from dotfiles to Developer
cp -r ~/dotfiles/Scripts/* ~/Developer/Scripts/

# Remove original scripts folder
rm -rf ~/dotfiles/Scripts

echo "Done! Developer folder setup complete."
