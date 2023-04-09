#!/bin/bash

docker_repo_root=expouroborous
pattern=spacy-*

## Login
docker login || exit

# Directories that match pattern
dirs=$(find . -type d -name "$pattern")

# Loop over directories and perform action
for dir in $dirs; do
    docker_base_name=$(basename "$dir")
    echo "Pushing docker image: $docker_base_name"
    docker tag "$docker_base_name" "$docker_repo_root/$docker_base_name:latest"
    docker push "$docker_repo_root/$docker_base_name:latest"
done

