FROM php:8.2-apache

RUN apt-get update \
    && apt-get install -y --no-install-recommends mariadb-server mariadb-client \
    && docker-php-ext-install mysqli \
    && rm -rf /var/lib/apt/lists/*

COPY . /var/www/html/
COPY docker/start.sh /usr/local/bin/start-tvsw.sh

RUN chmod +x /usr/local/bin/start-tvsw.sh \
    && echo "ServerName localhost" >> /etc/apache2/apache2.conf \
    && chown -R www-data:www-data /var/www/html

ENV DB_HOST=127.0.0.1
ENV DB_NAME=tvsw
ENV DB_USER=tvsw
ENV DB_PASS=tvsw

EXPOSE 80

CMD ["/usr/local/bin/start-tvsw.sh"]

