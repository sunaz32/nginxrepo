# Use the official NGINX base image
FROM nginx:latest

# Copy custom NGINX configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy website files to NGINX default directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
