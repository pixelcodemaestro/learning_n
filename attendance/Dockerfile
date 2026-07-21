# Use an official Node.js image
FROM node:20-alpine

# Install networking tools
# curl, wget            -> HTTP requests / downloads
# bind-tools             -> dig, nslookup (DNS testing)
# iputils                -> ping
# net-tools              -> ifconfig, netstat, route
# iproute2               -> ip, ss (modern net-tools replacement)
# nmap, nmap-scripts     -> port scanning / service discovery
# tcpdump                -> packet capture
# traceroute, mtr        -> path tracing / latency diagnostics
# netcat-openbsd         -> nc, for raw TCP/UDP testing
# openssh-client         -> ssh, scp for remote testing
# bash, jq               -> scripting helpers
# lsof                   -> list open files/sockets
# busybox-extras         -> telnet and other extras
# whois                  -> domain lookups
# socat                  -> advanced socket relaying
# conntrack-tools        -> inspect connection tracking table
RUN apk update && apk add --no-cache \
    curl \
    wget \
    bind-tools \
    iputils \
    net-tools \
    iproute2 \
    nmap \
    nmap-scripts \
    tcpdump \
    traceroute \
    mtr \
    netcat-openbsd \
    openssh-client \
    bash \
    jq \
    lsof \
    busybox-extras \
    whois \
    socat \
    conntrack-tools

# Create application directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application source
COPY . .

# Expose application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]