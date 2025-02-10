#!/bin/bash

# This script demonstrates the correct way to process files in a directory,
# handling filenames with spaces properly.

while IFS= read -r -d '' file; do
  echo "Processing: $file"
  # Process the file here...
done < <(find . -maxdepth 1 -type f -print0)