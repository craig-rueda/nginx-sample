FROM nginx:stable-alpine
MAINTAINER craig@craigrueda.com

RUN apk add --no-cache openssl \
  && openssl req -x509 -newkey rsa:4096 -keyout /etc/ssl/private/key.pem -out /etc/ssl/certs/cert.pem -days 365 -nodes -subj '/CN=localhost'

COPY conf/nginx.conf /etc/nginx
COPY conf/default.conf /etc/nginx/conf.d
COPY json/* /usr/share/nginx/html/

EXPOSE 80 443
