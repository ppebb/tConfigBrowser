#!/usr/bin/env bash

for file in ./metadata/*; do
    json="$json$(cat "$file")"
done

echo "$json" | jq -c -s '.' > metadata.json
