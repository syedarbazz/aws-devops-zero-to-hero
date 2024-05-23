#!/bin/bash
set -e

# Stop the running container (if any)
containerID=$(docker ps -q)

if [ -n "$containerID" ]; then
  docker rm -f ${containerID}
else
  echo "No running container to stop."
fi
