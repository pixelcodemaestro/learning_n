# # 1. Choose the base image
# FROM node:18-alpine

# # 2. Create an app directory inside the container to hold your files
# WORKDIR /app

# # 3. Copy files that define dependencies (package.json) into the container
# # (If you don't have package.json files yet, you can comment these two lines out)
# COPY package*.json ./


# # 4. Copy your specific text files into the container
# # (Docker looks for these inside your current terminal folder)
# COPY nadhiya.txt /app/nadhiya.txt
# COPY prasanth.txt /app/prasanth.txt
# COPY heart.txt /app/heart.txt

# # 5. Copy the rest of your application code into the container
# COPY . .


# RUN npm install
# # 6. Inform Docker which port the container will listen on at runtime
# EXPOSE 3000

# # 7. Define the default command to start your application
# CMD ["npm", "start"]


# 1. Use the smallest possible Linux base image
FROM alpine:latest

# 2. Set a working directory inside the container
WORKDIR /app

# 3. Copy your text file into the container
COPY nadhiya.txt /app/nadhiya.txt
COPY prasanth.txt /app/prasanth.txt

# 4. A simple command that prints the file content when the container runs
CMD ["cat", "/app/nadhiya.txt"]