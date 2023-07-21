FROM alpine:3.14

RUN apk update && apk add nginx openssl && mkdir -p /run/nginx && mkdir -p /var/www/html

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/ST=BG/L=BG/O=1337 School/OU=ebelkhei/CN=ebelkhei.42.fr/"

COPY /conf/default.conf /etc/nginx/http.d

CMD ["nginx", "-g", "daemon off;"]