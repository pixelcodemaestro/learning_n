#!/bin/bash


echo "=================================================="
# echo "🏗️  Starting Build & Deployment for: $CONTAINER_NAME"
echo "=================================================="





echo "🔄 Step 1: list the images..."
docker images

echo "🔨 Step 2: list the container"
# Forces docker-compose to read your Dockerfile and compile fresh code
docker ps



echo "=================================================="
echo "✅ nadhiya Successful!"
# echo "🌐 Your app is reachable at: http://localhost:$PORT"
echo "=================================================="
# docker ps --filter "name=$CONTAINER_NAME"