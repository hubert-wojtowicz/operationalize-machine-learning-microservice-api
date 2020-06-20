#!/usr/bin/env bash

appName="prediction-app"
appContainerHostPort=8000
appContainerInstanceName="instance-1"

## Complete the following steps to get Docker running locally
# Step 1:
# Build image and add a descriptive tag
docker build --tag=$appName .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
echo "Expose app container on host port: $appContainerHostPort"
docker run -p $appContainerHostPort:80 $appName

# alternative with container manual name assignment
# docker run -p $appContainerHostPort:80 --name $(echo "$appName-$appContainerInstanceName") $appName