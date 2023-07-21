# #!/bin/bash

# Add a user and change its password

adduser -D $FTP_USER -h /home/$FTP_USER/ftp/ ; echo "$FTP_USER:$FTP_PASSWORD" | chpasswd
mkdir -p /home/$FTP_USER/ftp/
chown -R $FTP_USER:$FTP_USER /home/$FTP_USER/ftp/
chmod 777 /home/$FTP_USER/ftp/

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