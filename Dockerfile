
FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

# Copy your static files to the Nginx web root
COPY index.html /usr/share/nginx/html/


# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

