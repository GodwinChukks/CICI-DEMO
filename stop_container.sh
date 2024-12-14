##!/bin/bash
#set -e

#sudo su - root
# Stop the running container (if any)
#docker stop $(docker ps -a -q)
#docker rm $(docker ps -a -q)
#echo "done"

#!/bin/bash
# stop_container script
set -e

# Stop and remove any running container using port 5000
RUNNING_CONTAINER=$(docker ps -q --filter "ancestor=godwinchukks/simple-python-flask-app" --filter "status=running")
if [ -n "$RUNNING_CONTAINER" ]; then
    echo "Stopping running container..."
    docker stop "$RUNNING_CONTAINER"
    docker rm "$RUNNING_CONTAINER"
else
    echo "No running container found."
fi
