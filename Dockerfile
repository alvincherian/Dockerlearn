
FROM nginx
RUN apt-get update -y
RUN apt-get update && apt-get install -y apache2-utils
RUN mkdir /etc/nginx/auth
RUN htpasswd -b -c /etc/nginx/auth/.htpasswd secdev devsecops
COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/
RUN service nginx restart
EXPOSE 8089
CMD ["nginx", "-g", "daemon off;"]