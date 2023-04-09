#!/bin/bash

pattern=spacy-*
base_dir=$(pwd)

# Directories that match pattern
dirs=$(find . -type d -name "$pattern")

# Loop over directories and perform action
for dir in $dirs; do
    cd "$base_dir" || exit
    cd "$dir" || exit
    docker_base_name=$(basename "$dir")
    echo "Building docker image: $docker_base_name"
    docker build -t $docker_base_name:latest .
done

# Return to base directory
cd "$base_dir"