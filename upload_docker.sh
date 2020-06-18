#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
login="hubertos"
repoName="udacity-project"
dockerpath="$login/$repoName"

# Step 2:  
# Authenticate & tag
echo "Sign in to $login DockerHub account"
docker login -u "$login"
echo "Docker ID and Image: $dockerpath"c

# Step 3:
# Push image to a docker repository
docker tag prediction-app hubertos/prediction-app
docker push hubertos/prediction-app