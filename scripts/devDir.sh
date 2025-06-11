#!/usr/bin/env bash
set -e

# Abort on Windows
case "$(uname -s)" in
  CYGWIN*|MINGW*|MSYS*|Windows*|*NT*)
    echo "Skipping dev folder setup: Windows not supported."
    exit 0
    ;;
esac

# If these folders exist then abort 
FOLDERS=("$HOME/dev" "$HOME/Developer")

# Check if any dev folder exists
for dir in "${FOLDERS[@]}"; do
  if [ -d "$dir" ]; then
    echo "ERROR: '$dir' already exists. Skipping dev folder setup."
    exit 0
  fi
done

# Create dev folder structure inside $HOME/dev
mkdir -p "$HOME/dev"/{archive,configs,resources,temp,studies,working}
echo "Created dev folder structure at $HOME/dev"
