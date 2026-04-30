# Use an official Nginx image as the base
FROM nginx:alpine

# Clean the default Nginx directory
RUN rm -rf /usr/share/nginx/html/*

# 1. Copy HTML files to the root web directory
COPY src/ /usr/share/nginx/html/

# 2. Copy CSS to a 'styles' subfolder (Matches: styles/style.css)
COPY styles/ /usr/share/nginx/html/styles/

# 3. Copy CSS directly into the root (Matches: style.css)
COPY styles/style.css /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]