# #!/bin/bash

# Add a user and change its password

adduser -D $FTP_USER -h /var/www/html ; echo "$FTP_USER:$FTP_PASSWORD" | chpasswd
mkdir -p /var/www/html
chown -R $FTP_USER:$FTP_USER /var/www/html
chmod 777 /var/www/html

echo "
listen=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022
dirmessage_enable=YES
use_localtime=YES
xferlog_enable=YES
connect_from_port_20=NO
seccomp_sandbox=NO" > /etc/vsftpd/vsftpd.conf

exec $@
