#!/usr/bin/env bash

mkdir "./metadata"

for file in ./mods/*; do
    name=$(basename "$file" .obj)
    output="./metadata/$name.json"
    if [[ -r "$output" ]]; then
        continue
    fi
    json=$(jq --null-input --arg name "$name" --arg file "${file:2}" '{"name": $name, "desc": null, "author": null, "homepage": null, "location": $file}')
    echo "$json" > "$output"
done
