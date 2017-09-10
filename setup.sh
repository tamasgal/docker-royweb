#!/bin/bash
set -e

# build the image
echo "Building the Docker image"
docker build -t royweb .

# startup
docker run -d \
    -p 8080:8080 \
    -p 9999:9999/udp \
    -v $(pwd)/sessions:/sessions \
    --name royweb \
    royweb \
    royweb --ip=193.48.106.31

echo "The royweb service is now up and running."
