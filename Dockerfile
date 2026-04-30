# Use an official Nginx image as the base
FROM nginx:alpine

# Copy the 'dist' folder created by Parcel into the Nginx server folder
COPY dist/ /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]