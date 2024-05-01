# Use an nginx image as the base image
FROM nginx:latest

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy the website files to the nginx html directory
COPY index.html /usr/share/nginx/html/
COPY favicon.ico /usr/share/nginx/html/

# Copy the folders to the nginx root directory
COPY js /usr/share/nginx/html/js
COPY meta /usr/share/nginx/html/meta
COPY style /usr/share/nginx/html/style

# Expose port 80 to allow outside connections to the website
EXPOSE 80

# Command to start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
