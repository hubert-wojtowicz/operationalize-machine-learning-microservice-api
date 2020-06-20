#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
login="hubertos"
appName="prediction-app"
dockerpath="$login/$appName"
deploymentName="$appName-deploy"
exposePort=80

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment $deploymentName --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment/$deploymentName --type="NodePort" --port $exposePort