# Use Nginx to serve static files
FROM nginx:alpine

# Copy the static frontend files from the build context (the frontend folder)
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
