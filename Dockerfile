# Use official Nginx image
FROM nginx:alpine

# Copy custom nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy your website content into Nginx web root
COPY . /usr/share/nginx/html

# Expose port 8089 instead of 80
EXPOSE 8087

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
