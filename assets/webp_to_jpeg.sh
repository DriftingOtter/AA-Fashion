#!/bin/bash

# Convert all .webp files to .jpeg using imagemagick
for file in *.webp; do
    if [ -f "$file" ]; then
        filename=$(basename -- "$file")
        extension="${filename##*.}"
        filename="${filename%.*}"
        convert "$file" "$filename.jpg"
    fi
done

