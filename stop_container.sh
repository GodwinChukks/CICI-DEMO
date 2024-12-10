#!/bin/bash

# Get the container ID or name of the running container (change "your-image-name" to your Docker image name)
CONTAINER_ID=$(docker ps -q --filter "ancestor=your-image-name")

if [ -n "$CONTAINER_ID" ]; then
  # Stop the container
  docker stop "$CONTAINER_ID"
  echo "Stopped container: $CONTAINER_ID"
else
  echo "No running container found for the image 'your-image-name'."
fi
