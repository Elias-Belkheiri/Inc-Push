FROM alpine:3.14

RUN apk update && apk add vsftpd && mkdir -p /var/www/html

COPY ./tools/script.sh .

ENTRYPOINT [ "sh" , "./script.sh" ]

CMD ["vsftpd", "/etc/vsftpd/vsftpd.conf"]