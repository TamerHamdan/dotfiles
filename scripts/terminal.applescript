#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Terminal 
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 

# Documentation:
# @raycast.description Workaround Apple Api incompaitbilty with WM

tell application "System Events"
    delay 0.5 -- Wait for Ghostty to load
    tell application "Ghostty" to activate
    keystroke ";" using {option down, shift down}
    delay 0.2
    keystroke "f"
end tell
