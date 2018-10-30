#!/bin/bash

PHAB_MYSQL_HOST=$DB_PORT_3306_TCP_ADDR
PHAB_MYSQL_PORT=$DB_PORT_3306_TCP_PORT
PHAB_MYSQL_USER="root"
PHAB_MYSQL_PASSWORD=""
PHAB_BASE_URI=$BASE_URL
PHAB_ALLOWED_URIS='["'$BASE_URL'", "https://127.0.0.1", "http://172.17.0.3", "https://172.17.0.3" ,"http://127.0.1.1:8080", "https://127.0.1.1:8080"]'

cd /var/www/html/phabricator/bin

./config set mysql.host $PHAB_MYSQL_HOST
./config set mysql.port $PHAB_MYSQL_PORT
./config set mysql.user $PHAB_MYSQL_USER
./config set mysql.pass $PHAB_MYSQL_PASSWORD

./storage upgrade --force

./config set phabricator.base-uri $PHAB_BASE_URI

echo $PHAB_ALLOWED_URIS

./config set phabricator.allowed-uris "$PHAB_ALLOWED_URIS"

service apache2 stop
service apache2 start
