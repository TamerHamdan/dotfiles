#!/bin/bash
# Downloads folder organizer - works on macOS and Linux
# Sorts files into categorized folders within Downloads

DOWNLOADS="$HOME/Downloads"
cd "$DOWNLOADS" || exit 1

# Create category folders
mkdir -p media documents archives applications other

# Function to process a single file
process_file() {
    local file="$1"
    [ -f "$file" ] || return
    
    case "${file##*.}" in
        # Media (Images and Videos)
        "jpg"|"jpeg"|"png"|"gif"|"bmp"|"tiff"|"webp"|"svg"|"ico"|"heic"|"mp4"|"avi"|"mkv"|"mov"|"wmv"|"flv"|"webm"|"m4v"|"3gp") mv "$file" media/ ;;
        
        # Documents
        "pdf"|"doc"|"docx"|"txt"|"rtf"|"odt"|"pages"|"md"|"tex") mv "$file" documents/ ;;
        
        # Archives
        "zip"|"rar"|"tar"|"gz"|"7z"|"bz2"|"xz"|"tgz") mv "$file" archives/ ;;
        
        # Applications
        "dmg"|"pkg"|"deb"|"rpm"|"appimage"|"exe"|"msi") mv "$file" applications/ ;;
        
        # Everything else (common unsorted files)
        "sav"|"save"|"dat"|"part"|"crdownload"|"tmp"|"log"|"cfg"|"ini"|"conf"|"bak"|"old"|"cache") mv "$file" other/ ;;
        
        # Catch all remaining files
        *) mv "$file" other/ ;;
    esac
}

# Process all files recursively, excluding the category folders we just created
find . -type f -not -path "./media/*" -not -path "./documents/*" -not -path "./archives/*" -not -path "./applications/*" -not -path "./other/*" | while read -r file; do
    process_file "$file"
done

echo "Downloads folder organized!"