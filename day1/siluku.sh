#!/bin/bash

# Exit immediately if any command fails
set -e


echo "=================================================="
# echo "🏗️  Starting Build & Deployment for: $CONTAINER_NAME"
echo "=================================================="



echo "🔄 Step 1: Taking down existing container if running..."
docker compose down --remove-orphans

echo "🔨 Step 2: Compiling assets and rebuilding local image..."
# Forces docker-compose to read your Dockerfile and compile fresh code
docker compose build --no-cache

echo "🔨 Step 3: Building the blueprint of docker image ..."
docker build -t siluku:1 .  

echo "🔨 Step 4: Running the build image fromthe Dockerfile ..."

docker run -d --name siluku -p 8989:80 siluku:1


echo "=================================================="
echo "✅ Deployment Successful!"
# echo "🌐 Your app is reachable at: http://localhost:$PORT"
echo "=================================================="
# docker ps --filter "name=$CONTAINER_NAME"