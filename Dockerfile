# Use the latest version of the nginx image
FROM nginx:latest

# Copy the current directory contents into the container at /usr/share/nginx/html/
COPY . /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# Set permissions for the HTML and CSS files
RUN chmod 644 /usr/share/nginx/html/finally.html && \
    chmod 644 /usr/share/nginx/html/yes.html && \
    chmod 644 /usr/share/nginx/html/nextpage.html && \
    chmod 644 /usr/share/nginx/html/style.css

# Run nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]