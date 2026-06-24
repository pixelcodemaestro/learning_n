# ── Stage: serve static files with nginx ──
FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy all static files (HTML, images, audio)
COPY public/ /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]