FROM alpine:3.14

# Install mariadb
RUN apk update && apk add mariadb mariadb-client && \
    mkdir -p /var/run/mysqld && chown mysql:mysql /var/run/mysqld &&  \
    # Allow remote connection
	sed -i 's/skip-networking/#skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf && \
    sed -i 's/#bind-address/bind-address/g' /etc/my.cnf.d/mariadb-server.cnf && \
    # Initialize the data directory
    mysql_install_db --datadir=/var/lib/mysql -u mysql
    
RUN chown -R mysql:mysql /var/lib/mysql && chmod -R 700 /var/lib/mysql

WORKDIR /tmp

COPY ./tools/script.sh .

ENTRYPOINT [ "sh", "script.sh"]

CMD [ "mysqld", "--user=mysql", "--init-file=/tmp/initfile.sql" ]