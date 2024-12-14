#!/bin/bash
#set -e

#sudo su - root

# Pull the Docker image from Docker Hub
#docker pull godwinchukks/simple-python-flask-app:latest

# Run the Docker image as a container
#docker run -d -p 5000:5000 godwinchukks/simple-python-flask-app

#!/bin/bash
# start_container script
set -e

# Pull the Docker image from Docker Hub
docker pull godwinchukks/simple-python-flask-app:latest

# Stop and remove any running container using port 5000 to avoid conflicts
RUNNING_CONTAINER=$(docker ps -q --filter "ancestor=godwinchukks/simple-python-flask-app" --filter "status=running")
if [ -n "$RUNNING_CONTAINER" ]; then
    echo "Stopping running container..."
    docker stop "$RUNNING_CONTAINER"
    docker rm "$RUNNING_CONTAINER"
fi

# Run the Docker image as a container
docker run --rm -d -p 5000:5000 godwinchukks/simple-python-flask-app

