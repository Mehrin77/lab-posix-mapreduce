#!/bin/bash

# Loop through all the zip files for Jan 1 - Jan 9
for file in /data/Twitter\ dataset/geoTwitter20-01-0*.zip; do
  unzip -p "$file" \
  | grep '"country_code": "US"' \
  | jq -r '.lang' \
  | sort \
  | uniq -c \
  | sort -nr \
  > "map.$(basename "$file").dat" &
done

wait  # Ensure all background processes complete

