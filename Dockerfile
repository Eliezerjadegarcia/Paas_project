FROM nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom nginx config that listens on port 8080
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy website files
COPY . /usr/share/nginx/html

# Expose port 8080 (required by Cloud Run)
EXPOSE 8080
