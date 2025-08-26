# Use Nginx as a lightweight web server
FROM nginx:alpine

# Copy your HTML file into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
