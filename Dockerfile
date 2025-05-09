# Use the official Nginx image
FROM nginx:alpine

# Remove the default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files to the Nginx web root
COPY index.html /usr/share/nginx/html/
# If you have CSS or JS, copy the whole folder like this:
# COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
