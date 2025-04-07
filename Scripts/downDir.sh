#!/bin/bash
# filepath: /Users/mac/dotfiles/Scripts/downDir.sh
# Make and sort Downloads Directories

# Set Downloads directory - works on both macOS and Linux
DOWNLOADS_DIR="$HOME/Downloads"

echo "Starting downloads directory organization..."

# Step 1: First extract all files from subfolders to the downloads folder
echo "Extracting files from subfolders..."
find "$DOWNLOADS_DIR" -mindepth 2 -type f -exec mv {} "$DOWNLOADS_DIR/" \; 2>/dev/null

# Step 2: Remove all empty directories in Downloads
echo "Removing empty directories..."
find "$DOWNLOADS_DIR" -mindepth 1 -type d -empty -delete 2>/dev/null

# Step 3: Create the new directory structure
echo "Creating new directory structure..."
mkdir -p "$DOWNLOADS_DIR"/{Work,Uni,Media,Installers,Docs,Archives,Misc}

# Step 4: Organize files by type
echo "Sorting files by type..."

# Count files before moving
installers_count=$(find "$DOWNLOADS_DIR" -maxdepth 1 -type f \( -name "*.dmg" -o -name "*.iso" -o -name "*.img" -o -name "*.exe" -o -name "*.msi" -o -name "*.deb" -o -name "*.rpm" -o -name "*.pkg" -o -name "*.app" \) | wc -l)
media_count=$(find "$DOWNLOADS_DIR" -maxdepth 1 -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.gif" -o -name "*.svg" -o -name "*.webp" -o -name "*.mp4" -o -name "*.mkv" -o -name "*.avi" -o -name "*.webm" -o -name "*.mp3" -o -name "*.wav" -o -name "*.flac" -o -name "*.mov" \) | wc -l)
docs_count=$(find "$DOWNLOADS_DIR" -maxdepth 1 -type f \( -name "*.pdf" -o -name "*.doc" -o -name "*.docx" -o -name "*.xls" -o -name "*.xlsx" -o -name "*.ppt" -o -name "*.pptx" -o -name "*.txt" -o -name "*.md" -o -name "*.rtf" -o -name "*.odt" -o -name "*.pages" -o -name "*.numbers" -o -name "*.key" \) | wc -l)
archive_count=$(find "$DOWNLOADS_DIR" -maxdepth 1 -type f \( -name "*.zip" -o -name "*.rar" -o -name "*.7z" -o -name "*.tar" -o -name "*.gz" -o -name "*.bz2" -o -name "*.xz" -o -name "*.tgz" \) | wc -l)

# Move files to their respective directories
find "$DOWNLOADS_DIR" -maxdepth 1 -type f \( -name "*.dmg" -o -name "*.iso" -o -name "*.img" -o -name "*.exe" -o -name "*.msi" -o -name "*.deb" -o -name "*.rpm" -o -name "*.pkg" -o -name "*.app" \) -exec mv {} "$DOWNLOADS_DIR/Installers/" \; 2>/dev/null

find "$DOWNLOADS_DIR" -maxdepth 1 -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.gif" -o -name "*.svg" -o -name "*.webp" -o -name "*.mp4" -o -name "*.mkv" -o -name "*.avi" -o -name "*.webm" -o -name "*.mp3" -o -name "*.wav" -o -name "*.flac" -o -name "*.mov" \) -exec mv {} "$DOWNLOADS_DIR/Media/" \; 2>/dev/null

find "$DOWNLOADS_DIR" -maxdepth 1 -type f \( -name "*.pdf" -o -name "*.doc" -o -name "*.docx" -o -name "*.xls" -o -name "*.xlsx" -o -name "*.ppt" -o -name "*.pptx" -o -name "*.txt" -o -name "*.md" -o -name "*.rtf" -o -name "*.odt" -o -name "*.pages" -o -name "*.numbers" -o -name "*.key" \) -exec mv {} "$DOWNLOADS_DIR/Docs/" \; 2>/dev/null

find "$DOWNLOADS_DIR" -maxdepth 1 -type f \( -name "*.zip" -o -name "*.rar" -o -name "*.7z" -o -name "*.tar" -o -name "*.gz" -o -name "*.bz2" -o -name "*.xz" -o -name "*.tgz" \) -exec mv {} "$DOWNLOADS_DIR/Archives/" \; 2>/dev/null

# Move all remaining files to Misc
find "$DOWNLOADS_DIR" -maxdepth 1 -type f -not -path "*/\.*" -exec mv {} "$DOWNLOADS_DIR/Misc/" \; 2>/dev/null

# Print summary
echo "✅ Downloads organization complete!"
echo "----------------------------"
echo "Installer files moved: $installers_count"
echo "Media files moved: $media_count"
echo "Document files moved: $docs_count"
echo "Archive files moved: $archive_count"
echo "----------------------------"
echo "Your downloads are now organized into: Work, Uni, Media, Installers, Docs, Archives, and Misc"
echo "Note: Work and Uni folders are created but empty - you can manually move files there as needed"