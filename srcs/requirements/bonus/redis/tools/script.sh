# #!/bin/bash

echo "maxmemory 256mb
maxmemory-policy allkeys-lru" >> /etc/redis.conf

# sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g" /etc/redis/redis.conf

exec $@