#!/bin/bash

# Read unique languages from one of the map files
cat map.geoTwitter20-01-01.zip.dat | awk '{print $2}' | sort | uniq | while read lang; do
    counts=$(cat map.* | grep "$lang" | awk '{print $1}')  # Extract counts for this language
    sum=$(echo "$counts" | paste -sd+ | bc)  # Sum all counts
    echo "$sum $lang"
done | sort -nr > reduce  # Sort by total tweet count

