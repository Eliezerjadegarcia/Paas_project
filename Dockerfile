# Use a small web server image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default HTML files
RUN rm -rf ./*

# Copy your site files into the image
COPY . .

# Expose the port nginx is using
EXPOSE 80

# Nginx runs automatically on container start
