# !/bin/bash

echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;" >> initfile.sql
echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" >> initfile.sql
echo "FLUSH PRIVILEGES;" >> initfile.sql

exec $@
