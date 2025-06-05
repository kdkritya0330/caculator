# Use the official Nginx image based on Alpine Linux
FROM nginx:alpine

# Remove the default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files into the Nginx web directory
COPY . /usr/share/nginx/html/

# Expose port 80 to the host
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
