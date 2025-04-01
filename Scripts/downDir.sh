# Make and sort Downloads Directories
mkdir -p ~/Downloads/{DMG,Iso,Media,Uni,Docs,Other}

mv ~/Downloads/*.dmg ~/Downloads/DMG/ 2>/dev/null
mv ~/Downloads/*.iso ~/Downloads/Iso/ 2>/dev/null
mv ~/Downloads/*.{png,jpg,jpeg,gif,svg,webp,mp4,mkv,avi,webm,mp3,wav,flac} ~/Downloads/Media/ 2>/dev/null
mv ~/Downloads/*.{pdf,doc,docx,xls,xlsx,ppt,pptx,txt,md} ~/Downloads/Docs/ 2>/dev/null
echo "Downloads Directories Setup Done!"

