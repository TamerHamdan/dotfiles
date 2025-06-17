#!/bin/bash
# Downloads folder organizer - works on macOS and Linux
# Sorts files into categorized folders within Downloads

DOWNLOADS="$HOME/Downloads"
cd "$DOWNLOADS" || exit 1

# Create category folders
mkdir -p images videos documents audio archives applications code books other

# Move files based on extensions
for file in *.*; do
    [ -f "$file" ] || continue
    
    case "${file##*.}" in
        # Images
        jpg|jpeg|png|gif|bmp|tiff|webp|svg|ico|heic) mv "$file" images/ ;;
        
        # Videos
        mp4|avi|mkv|mov|wmv|flv|webm|m4v|3gp) mv "$file" videos/ ;;
        
        # Documents
        pdf|doc|docx|txt|rtf|odt|pages|md|tex) mv "$file" documents/ ;;
        
        # Audio
        mp3|wav|flac|aac|ogg|m4a|wma) mv "$file" audio/ ;;
        
        # Archives
        zip|rar|tar|gz|7z|bz2|xz|tgz) mv "$file" archives/ ;;
        
        # Applications
        dmg|pkg|deb|rpm|appimage|exe|msi) mv "$file" applications/ ;;
        
        # Code
        py|js|html|css|php|java|cpp|c|sh|rb|go|rs) mv "$file" code/ ;;
        
        # Books
        epub|mobi|azw|azw3) mv "$file" books/ ;;
        
        # Everything else (common unsorted files)
        sav|save|dat|part|crdownload|tmp|log|cfg|ini|conf|bak|old|cache) mv "$file" other/ ;;
        
        # Catch all remaining files
        *) mv "$file" other/ ;;
    esac
done

echo "Downloads folder organized!"