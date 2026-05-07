#!/bin/bash
set -e

mkdir -p /run/mysqld
chown -R mysql:mysql /run/mysqld /var/lib/mysql

if [ ! -d /var/lib/mysql/mysql ]; then
    mariadb-install-db --user=mysql --datadir=/var/lib/mysql > /dev/null
fi

mysqld_safe --datadir=/var/lib/mysql --bind-address=127.0.0.1 &

mysql_listo=0
for i in $(seq 1 60); do
    if mysqladmin ping -uroot --silent; then
        mysql_listo=1
        break
    fi
    sleep 1
done

if [ "$mysql_listo" -ne 1 ]; then
    echo "MariaDB no ha arrancado correctamente."
    exit 1
fi

mysql -uroot <<SQL
CREATE DATABASE IF NOT EXISTS tvsw CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER IF NOT EXISTS 'tvsw'@'localhost' IDENTIFIED BY 'tvsw';
CREATE USER IF NOT EXISTS 'tvsw'@'127.0.0.1' IDENTIFIED BY 'tvsw';
GRANT ALL PRIVILEGES ON tvsw.* TO 'tvsw'@'localhost';
GRANT ALL PRIVILEGES ON tvsw.* TO 'tvsw'@'127.0.0.1';
FLUSH PRIVILEGES;
SQL

if [ ! -f /var/lib/mysql/.tvsw_importado ]; then
    mysql -uroot tvsw < "/var/www/html/bd/tvsw.sql"
    touch /var/lib/mysql/.tvsw_importado
fi

apache2-foreground

