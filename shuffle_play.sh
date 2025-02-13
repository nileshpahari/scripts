#!/bin/bash

# Directory containing music files
MUSIC_DIR="/home/nilesh/music"

# Find all .webm files in the directory and shuffle them
mapfile -t SONGS < <(find "$MUSIC_DIR" -type f -name "*.webm" | shuf)

# Play each song exactly once
for SONG in "${SONGS[@]}"; do
  echo "Now playing: $SONG"
  vlc --play-and-exit "$SONG"
done
