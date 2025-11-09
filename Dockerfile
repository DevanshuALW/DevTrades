# Use official lightweight Nginx image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx website
RUN rm -rf ./*

# Copy all website files from local directory to container
COPY . .

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx web server
CMD ["nginx", "-g", "daemon off;"]
