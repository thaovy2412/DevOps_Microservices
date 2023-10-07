#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="ttv2412/project_ml_microservice_vy_fpt:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl -- run microservice --image=ttv2412/project_ml_microservice_vy_fpt:v1.0.0  --port=80 --labels app=microproject_fpt


# Step 3:
# List kubernetes pods
minikube kubectl -- get pods


# Step 4:
# Forward the container port to a host
minikube kubectl -- port-forward microservice 8080:8080


#  minikube kubectl logs microservice-final