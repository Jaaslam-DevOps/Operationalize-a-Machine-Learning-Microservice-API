#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="jaaslam/udacity"


# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
echo "Introducing sleep for 25seconds for pod to start"
sleep 25
kubectl port-forward deployment.apps/udacity 8080:80
