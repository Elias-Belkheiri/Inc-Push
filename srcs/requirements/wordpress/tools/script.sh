# #!/bin/bash

# Check if Wordpress already exists.
if [ -f /var/www/html/wp-config.php ]
then
    echo "Wordpress already exists"
else
    wp core download
    # Configuring Wordpress cnf
        wp config create --allow-root --dbname=${WP_DB_NAME} --dbuser=${WP_DB_USER} --dbpass=${WP_DB_PASSWORD} --dbhost=${WP_DB_HOST}
        wp core install --url=${WP_URL} --title=${WP_TITLE} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL}
        wp user create "${WP_USER}" "${WP_USER_EMAIL}" --user_pass="${WP_PASSWORD}" --role=author

fi
# Redis
    sed -i "41 i define( 'WP_REDIS_HOST', 'redis' );\ndefine( 'WP_REDIS_PORT', '6379' );\n" wp-config.php
    wp plugin install redis-cache --activate
    wp redis enable

exec $@