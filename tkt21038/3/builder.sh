#!/bin/bash

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 github dockerhub"
    exit 1
fi

# Script logic
repo_url="git@github.com:${1}.git"
git clone "$repo_url"
repo_dir=$(echo "$1" | sed 's:.*/::')

docker build "./$repo_dir" -t $2
docker push $2
rm -rf $repo_dir

# Sample usage: ./builder.sh mluukkai/express_app keyxcode/bash-pipeline
