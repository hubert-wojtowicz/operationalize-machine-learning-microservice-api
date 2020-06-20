#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
login="hubertos"
appName="prediction-app"
dockerpath="$login/$appName"

# Step 2:  
# Authenticate & tag
echo "Sign in to $login DockerHub account"
docker login -u "$login"
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker tag $appName $dockerpath
docker push $dockerpath