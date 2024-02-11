#!/bin/bash

echo "*/10 * * * * /home/emp/compose/wp-nginx-mysql/backup.sh" | crontab

sudo docker run --rm --volumes-from wp-nginx-mysql-db-1 \
-v /home/emp/compose/backups:/backup ubuntu tar cvf "backup/$(date).tar" /data