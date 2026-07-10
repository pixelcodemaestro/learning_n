# Base Image
FROM node:20-alpine

# Working Directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application
COPY . .

# Expose application port
EXPOSE 3001

# Start application
CMD ["npm","start"]