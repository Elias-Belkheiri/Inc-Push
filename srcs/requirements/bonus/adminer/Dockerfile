FROM alpine:3.14

RUN apk update && apk add wget && mkdir -p /var/www/html/ && \
    apk add php7 php7-fpm php7-mysqli php7-zlib php7-curl php7-json php7-xml php7-phar php7-intl php7-dom php7-xmlreader php7-ctype php7-session php7-mbstring && \
    wget https://www.adminer.org/latest.php -O /var/www/html/index.php
    
# RUN adduser -D www-data -G www-data && \
#     chown -R www-data:www-data /var/www/html  && \
#     chmod -R 777 /var/www/html

RUN sed -i 's#listen = 127.0.0.1:9000#listen = 0.0.0.0:9000#' /etc/php7/php-fpm.d/www.conf

WORKDIR /var/www/html

CMD [ "php-fpm7" , "--nodaemonize" ]