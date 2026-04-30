# Use an official Nginx image as the base
FROM nginx:alpine

# Copy the HTML files from the src folder
COPY src/ /usr/share/nginx/html/

# Copy the CSS files from the styles folder into a matching subfolder
COPY styles/ /usr/share/nginx/styles/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]