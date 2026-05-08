# Simple Dockerfile to serve the single-page GeoCloak app with nginx
FROM nginx:stable-alpine

# Remove default conf and add our own to serve SPA
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy site files
COPY . /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
