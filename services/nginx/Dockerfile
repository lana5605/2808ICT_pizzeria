FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./certs/localhost.crt /etc/ssl/certs/localhost.crt
COPY ./certs/localhost.key /etc/ssl/private/localhost.key

EXPOSE 80