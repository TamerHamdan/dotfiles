#!/bin/bash

# Make Developer directories
mkdir -p ~/Developer/{Temp,Repos,.Archive,Uni,Working,Scripts}
echo "Developer directory structure created"

# Make and sort Downloads Directories
mkdir -p ~/Downloads/{DMG,Iso,Media,Uni,Docs,Other}

mv ~/Downloads/*.dmg ~/Downloads/DMG/ 2>/dev/null
mv ~/Downloads/*.iso ~/Downloads/Iso/ 2>/dev/null
mv ~/Downloads/*.{png,jpg,jpeg,gif,svg,webp,mp4,mkv,avi,webm,mp3,wav,flac} ~/Downloads/Media/ 2>/dev/null
mv ~/Downloads/*.{pdf,doc,docx,xls,xlsx,ppt,pptx,txt,md} ~/Downloads/Docs/ 2>/dev/null
echo "Downloads Directories Setup Done!"

# Copy scripts from dotfiles to Developer
cp -r ~/Scripts/* ~/Developer/Scripts/

# Remove original scripts folder
rm -rf ~/Scripts
rm -rf ~/dotfiles/Scripts/

echo "Script Copied to Developer Dir"
echo "Done! Developer folder setup complete."
