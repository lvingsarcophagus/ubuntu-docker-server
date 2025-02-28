#!/bin/bash

# Set the name of the Docker image
IMAGE_NAME="ubuntu-server"

# Build the Docker image
docker build -t $IMAGE_NAME .

# Run the Docker container
docker run -d --name my-ubuntu-server -p 8080:80 $IMAGE_NAME

# Output the status of the running container
docker ps -f name=my-ubuntu-server