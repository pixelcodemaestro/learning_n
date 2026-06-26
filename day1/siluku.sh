#!/bin/bash

# Exit immediately if any command fails
set -e

# CONTAINER_NAME="poland"
# PORT="0000"

echo "=================================================="
# echo "🏗️  Starting Build & Deployment for: $CONTAINER_NAME"
echo "=================================================="

# 1. Verify docker-compose.yml exists in the current directory
if [ ! -f "docker-compose.yml" ]; then
  echo "❌ Error: docker-compose.yml not found in $(pwd)!"
  exit 1
fi

# 2. Verify Dockerfile exists (required since you use 'build: .')
if [ ! -f "Dockerfile" ]; then
  echo "❌ Error: Dockerfile not found! Cannot compile your application image."
  exit 1
fi

echo "🔄 Step 1: Taking down existing container if running..."
docker compose down --remove-orphans

echo "🔨 Step 2: Compiling assets and rebuilding local image..."
# Forces docker-compose to read your Dockerfile and compile fresh code
docker compose build --no-cache

# echo "🚀 Step 3: Launching $CONTAINER_NAME in the background..."
docker compose up -d

echo "🧹 Step 4: Cleaning up older build caches to save space..."
docker image prune -f

echo "=================================================="
echo "✅ Deployment Successful!"
# echo "🌐 Your app is reachable at: http://localhost:$PORT"
echo "=================================================="
# docker ps --filter "name=$CONTAINER_NAME"