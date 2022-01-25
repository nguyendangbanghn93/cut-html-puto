
FROM nginx:1.16.0-alpine
COPY . /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/conf.d

# Start nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


# Set the base image to node:12-alpine
# FROM nginx
# COPY . /usr/share/nginx/html